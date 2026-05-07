.class public final synthetic Lcom/android/launcher/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/u;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/u;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/guide/layoutupgrade/FoldScreenLayoutUpgradeGuideActivity;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/u;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/settings/LauncherModelFragment;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/u;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/u;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/u;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget v0, p0, Lcom/android/launcher/u;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_2e

    :pswitch_6  #0x4
    iget-object p0, p0, Lcom/android/launcher/u;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/util/OplusMBAStartActivityHelper;->b(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_e  #0x3
    iget-object p0, p0, Lcom/android/launcher/u;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->l(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_16  #0x2
    iget-object p0, p0, Lcom/android/launcher/u;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/settings/LauncherModelFragment;

    invoke-static {p0, p1, p2}, Lcom/android/launcher/settings/LauncherModelFragment;->i(Lcom/android/launcher/settings/LauncherModelFragment;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_1e  #0x1
    iget-object p0, p0, Lcom/android/launcher/u;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/guide/layoutupgrade/FoldScreenLayoutUpgradeGuideActivity;

    invoke-static {p0, p1, p2}, Lcom/android/launcher/guide/layoutupgrade/FoldScreenLayoutUpgradeGuideActivity;->a(Lcom/android/launcher/guide/layoutupgrade/FoldScreenLayoutUpgradeGuideActivity;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_26  #0x0
    iget-object p0, p0, Lcom/android/launcher/u;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-static {p0, p1, p2}, Lcom/android/launcher/Launcher;->N(Lcom/android/launcher/Launcher;Landroid/content/DialogInterface;I)V

    return-void

    :goto_2e
    iget-object p0, p0, Lcom/android/launcher/u;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/DialogInterface$OnClickListener;

    invoke-static {p0, p1, p2}, Lcom/oplus/apppatformavailability/AppPlatformAvailability;->a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_26  #00000000
        :pswitch_1e  #00000001
        :pswitch_16  #00000002
        :pswitch_e  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
