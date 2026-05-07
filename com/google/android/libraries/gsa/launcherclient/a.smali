.class public final synthetic Lcom/google/android/libraries/gsa/launcherclient/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;I)V
    .registers 4

    iput p2, p0, Lcom/google/android/libraries/gsa/launcherclient/a;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    const/4 v0, 0x2

    :cond_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/a;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/a;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_18

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/a;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    return-void

    :pswitch_c  #0x1
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/a;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->reconnectIfNecessary()V

    return-void

    :pswitch_12  #0x0
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/a;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    return-void

    :goto_18
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/a;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->c(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_12  #00000000
        :pswitch_c  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
