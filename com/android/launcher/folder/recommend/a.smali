.class public final synthetic Lcom/android/launcher/folder/recommend/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/folder/recommend/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/folder/recommend/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/folder/recommend/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/guide/layoutupgrade/FoldScreenLayoutUpgradeGuideActivity;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/folder/recommend/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/appedit/AppEditActivity;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/folder/recommend/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lo1/b;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher/folder/recommend/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/folder/recommend/a;->a:I

    packed-switch v0, :pswitch_data_40

    goto :goto_2e

    :pswitch_6  #0x4
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/appedit/AppEditActivity;

    invoke-static {p0, p1}, Lcom/android/launcher3/appedit/AppEditActivity;->b(Lcom/android/launcher3/appedit/AppEditActivity;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_e  #0x3
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/guide/layoutupgrade/FoldScreenLayoutUpgradeGuideActivity;

    invoke-static {p0, p1}, Lcom/android/launcher/guide/layoutupgrade/FoldScreenLayoutUpgradeGuideActivity;->e(Lcom/android/launcher/guide/layoutupgrade/FoldScreenLayoutUpgradeGuideActivity;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_16  #0x2
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->d(Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_1e  #0x1
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->b(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_26  #0x0
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->a(Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;Landroid/content/DialogInterface;)V

    return-void

    :goto_2e
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/a;->b:Ljava/lang/Object;

    check-cast p0, Lo1/b;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "BrowserLauncherClient"

    const-string v0, "mCloseServiceDialog onDismiss"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lo1/b;->C:Landroidx/appcompat/app/AlertDialog;

    return-void

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_26  #00000000
        :pswitch_1e  #00000001
        :pswitch_16  #00000002
        :pswitch_e  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
