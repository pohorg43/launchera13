.class public final synthetic Lb2/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;I)V
    .registers 4

    iput p2, p0, Lb2/b;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_15

    const/4 v0, 0x2

    if-eq p2, v0, :cond_f

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb2/b;->b:Landroid/os/Bundle;

    return-void

    :cond_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb2/b;->b:Landroid/os/Bundle;

    return-void

    :cond_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb2/b;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lb2/b;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_1e

    :pswitch_6  #0x2
    iget-object p0, p0, Lb2/b;->b:Landroid/os/Bundle;

    check-cast p1, Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;

    invoke-static {p0, p1}, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder;->c(Landroid/os/Bundle;Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;)V

    return-void

    :pswitch_e  #0x1
    iget-object p0, p0, Lb2/b;->b:Landroid/os/Bundle;

    check-cast p1, Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;

    invoke-static {p0, p1}, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder;->b(Landroid/os/Bundle;Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;)V

    return-void

    :pswitch_16  #0x0
    iget-object p0, p0, Lb2/b;->b:Landroid/os/Bundle;

    check-cast p1, Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;

    invoke-static {p0, p1}, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder;->d(Landroid/os/Bundle;Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;)V

    return-void

    :goto_1e
    iget-object p0, p0, Lb2/b;->b:Landroid/os/Bundle;

    check-cast p1, Lcom/oplus/remoteanim/RemoteAnimationUtils$ILauncherRemoteListener;

    invoke-static {p0, p1}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->a(Landroid/os/Bundle;Lcom/oplus/remoteanim/RemoteAnimationUtils$ILauncherRemoteListener;)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_e  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
