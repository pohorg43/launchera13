.class public final synthetic Lcom/android/launcher3/allapps/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/togglebar/ToggleBarRootView;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/allapps/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/j;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;I)V
    .registers 4

    iput p2, p0, Lcom/android/launcher3/allapps/j;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/j;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onMultiWindowModeChanged(Z)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/allapps/j;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_1e

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/launcher3/allapps/j;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->j(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;Z)V

    return-void

    :pswitch_e  #0x1
    iget-object p0, p0, Lcom/android/launcher3/allapps/j;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->j(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;Z)V

    return-void

    :pswitch_16  #0x0
    iget-object p0, p0, Lcom/android/launcher3/allapps/j;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->j(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;Z)V

    return-void

    :goto_1e
    iget-object p0, p0, Lcom/android/launcher3/allapps/j;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/togglebar/ToggleBarRootView;

    invoke-static {p0, p1}, Lcom/android/launcher/togglebar/ToggleBarRootView;->a(Lcom/android/launcher/togglebar/ToggleBarRootView;Z)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_e  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
