.class public Lcom/android/launcher/folder/recommend/view/RecommendSwitchPanel;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "RecommendSwitchPanel"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialogDismissCallback:Lcom/android/launcher/folder/recommend/DialogDismissCallback;

.field private mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher/folder/recommend/DialogDismissCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendSwitchPanel;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendSwitchPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/view/RecommendSwitchPanel;->mDialogDismissCallback:Lcom/android/launcher/folder/recommend/DialogDismissCallback;

    return-void
.end method


# virtual methods
.method public showRecommendSwitchPanel()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendSwitchPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_13

    sget-object p0, Lcom/android/launcher/folder/recommend/view/RecommendSwitchPanel;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "the panel is showing!"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    new-instance v0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView$Builder;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/view/RecommendSwitchPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView$Builder;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendSwitchPanel;->mDialogDismissCallback:Lcom/android/launcher/folder/recommend/DialogDismissCallback;

    invoke-virtual {v0, p0}, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView$Builder;->setDialogDismissCallback(Lcom/android/launcher/folder/recommend/DialogDismissCallback;)Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView$Builder;

    new-instance p0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    const/16 v1, 0x51

    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, p0}, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView$Builder;->create(Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;)Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->animateShow()V

    return-void
.end method
