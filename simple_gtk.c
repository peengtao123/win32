#include <gtk/gtk.h>
#include <locale.h>

// 按钮点击事件的回调函数
static void on_button_clicked(GtkWidget *button, gpointer user_data) {
    GtkWidget *dialog;
    GtkWindow *parent = GTK_WINDOW(user_data);

    dialog = gtk_message_dialog_new(parent, GTK_DIALOG_DESTROY_WITH_PARENT,
                                    GTK_MESSAGE_INFO, GTK_BUTTONS_CLOSE,
                                    "你好，世界!");
    gtk_dialog_run(GTK_DIALOG(dialog));
    gtk_widget_destroy(dialog);
}

int main(int argc, char *argv[]) {
    GtkWidget *window;
    GtkWidget *button;

    setlocale(LC_ALL, "");
    gtk_init(&argc, &argv);

    // 创建一个窗口
    window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(window), "简单的GTK程序");
    gtk_window_set_default_size(GTK_WINDOW(window), 200, 100);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    g_signal_connect(window, "destroy", G_CALLBACK(gtk_main_quit), NULL);

    // 创建一个按钮
    button = gtk_button_new_with_label("点击我");
    g_signal_connect(button, "clicked", G_CALLBACK(on_button_clicked), window);
    gtk_container_add(GTK_CONTAINER(window), button);

    // 显示窗口和所有子控件
    gtk_widget_show_all(window);

    // 进入GTK主循环
    gtk_main();

    return 0;
}
