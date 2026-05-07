.class public Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;
.super Lcom/android/launcher/pagepreview/AbstractPagePreviewButtonContainer;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PagePreviewButtonContainer2"


# instance fields
.field private mCurConfiguration:Landroid/content/res/Configuration;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mFolderFormBtn:Lcom/android/launcher/views/PressFeedbackButton;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mLauncherMode:Lcom/android/launcher/mode/LauncherMode;

.field private mRemoveBtn:Lcom/android/launcher/views/PressFeedbackButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/pagepreview/AbstractPagePreviewButtonContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mLauncherMode:Lcom/android/launcher/mode/LauncherMode;

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/Launcher;

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;)Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method private dealAppIcons()V
    .registers 2

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_19

    :cond_15
    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->removeApps()V

    goto :goto_1c

    :cond_19
    :goto_19
    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->uninstallApps()V

    :goto_1c
    return-void
.end method

.method private generateFolder()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->generateFolderIcon()V

    :cond_b
    return-void
.end method

.method private getSelectedViewCount()I
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewCount()I

    move-result p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    const-string v0, "getSelectedViewCount: "

    const-string v1, "PagePreviewButtonContainer2"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method private removeApps()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/UninstallRemoveAppPanel;

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {v1, p0}, Lcom/android/launcher/UninstallRemoveAppPanel;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0, v0, p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->showConfirmPanel(Ljava/util/ArrayList;Ljava/util/List;Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;)V

    :cond_17
    return-void
.end method

.method private uninstallApps()V
    .registers 11

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v0

    if-eqz v0, :cond_98

    invoke-virtual {v0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/launcher/UninstallRemoveAppPanel;

    iget-object v3, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {v2, v3}, Lcom/android/launcher/UninstallRemoveAppPanel;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v8, :cond_26

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v8, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v7, v8}, Lcom/android/common/util/PackageUtils;->isCanUninstall(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5e

    iget-object v6, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v7, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v6, v8, v9}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageUserEncrypted(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_5a
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_5e
    invoke-static {v7}, Lcom/android/common/util/PackageUtils;->isCanDeleteIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_68
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7a

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7a

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->showAppEncryptedHintDialog()V

    return-void

    :cond_7a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_87

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_87

    return-void

    :cond_87
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8f

    const/4 v1, 0x1

    goto :goto_90

    :cond_8f
    const/4 v1, 0x0

    :goto_90
    new-instance v4, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer$1;-><init>(Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;Lcom/android/launcher/batchdrag/BatchDragViewManager;Z)V

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/launcher/UninstallRemoveAppPanel;->showConfirmPanel(Ljava/util/ArrayList;Ljava/util/List;Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;)V

    :cond_98
    return-void
.end method

.method private updateRemoveBtnText()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mRemoveBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mLauncherMode:Lcom/android/launcher/mode/LauncherMode;

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    if-ne p0, v1, :cond_f

    const p0, 0x7f12044a

    goto :goto_12

    :cond_f
    const p0, 0x7f12056b

    :goto_12
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(I)V

    return-void
.end method


# virtual methods
.method public adaptWallpaperBrightState()V
    .registers 6

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v0

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_c

    const v2, 0x7f0606f3

    goto :goto_f

    :cond_c
    const v2, 0x7f0606f2

    :goto_f
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1b

    const v3, 0x7f0606f5

    goto :goto_1e

    :cond_1b
    const v3, 0x7f0606f4

    :goto_1e
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2a

    const v4, 0x7f060705

    goto :goto_2d

    :cond_2a
    const v4, 0x7f060704

    :goto_2d
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mRemoveBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-eqz v4, :cond_4c

    invoke-virtual {v4}, Lcom/android/launcher/views/PressFeedbackButton;->setStateColor()V

    iget-object v4, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mRemoveBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {v4, v2}, Lcom/android/launcher/views/PressFeedbackButton;->setDrawableColor(I)V

    iget-object v4, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mRemoveBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {v4, v1}, Lcom/android/launcher/views/PressFeedbackButton;->setDisableColor(I)V

    iget-object v4, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mRemoveBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {v4}, Landroid/widget/Button;->invalidate()V

    iget-object v4, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mRemoveBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4c
    iget-object v4, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mFolderFormBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-eqz v4, :cond_67

    invoke-virtual {v4}, Lcom/android/launcher/views/PressFeedbackButton;->setStateColor()V

    iget-object v4, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mFolderFormBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {v4, v2}, Lcom/android/launcher/views/PressFeedbackButton;->setDrawableColor(I)V

    iget-object v2, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mFolderFormBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {v2, v1}, Lcom/android/launcher/views/PressFeedbackButton;->setDisableColor(I)V

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mFolderFormBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {v1}, Landroid/widget/Button;->invalidate()V

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mFolderFormBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {p0, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_67
    const-string p0, " adaptWallpaperBrightState isBright = "

    const-string v1, "PagePreviewButtonContainer2"

    invoke-static {p0, v0, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public checkLauncherModeChanged()V
    .registers 3

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mLauncherMode:Lcom/android/launcher/mode/LauncherMode;

    if-eq v0, v1, :cond_11

    iput-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mLauncherMode:Lcom/android/launcher/mode/LauncherMode;

    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->updateRemoveBtnText()V

    :cond_11
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher/views/AdaptiveScreenRotateLinearLayout;->onAttachedToWindow()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mCurConfiguration:Landroid/content/res/Configuration;

    return-void
.end method

.method public onButtonLayoutInflateFinished()V
    .registers 7

    const v0, 0x7f0a00f5

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/views/PressFeedbackButton;

    iput-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mRemoveBtn:Lcom/android/launcher/views/PressFeedbackButton;

    const v0, 0x7f0a00ef

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/views/PressFeedbackButton;

    iput-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mFolderFormBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->getSelectedViewCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mRemoveBtn:Lcom/android/launcher/views/PressFeedbackButton;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_46

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/Launcher;

    iget-object v4, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mRemoveBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v5

    if-eqz v5, :cond_3f

    if-lez v0, :cond_3d

    move v1, v3

    goto :goto_43

    :cond_3d
    move v1, v2

    goto :goto_43

    :cond_3f
    invoke-static {v1}, Lcom/android/common/util/GenericUtils;->isEnableUninstallButton(Lcom/android/launcher/Launcher;)Z

    move-result v1

    :goto_43
    invoke-virtual {v4, v1}, Lcom/android/launcher/views/PressFeedbackButton;->setEnabled(Z)V

    :cond_46
    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mFolderFormBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-eqz v1, :cond_55

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mFolderFormBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-le v0, v3, :cond_52

    move v2, v3

    :cond_52
    invoke-virtual {v1, v2}, Lcom/android/launcher/views/PressFeedbackButton;->setEnabled(Z)V

    :cond_55
    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->updateRemoveBtnText()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00ef

    if-eq v0, v1, :cond_2a

    const v1, 0x7f0a00f5

    if-eq v0, v1, :cond_26

    const-string/jumbo p0, "onClick -- invalid id: "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PagePreviewButtonContainer2"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    :cond_26
    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->dealAppIcons()V

    goto :goto_2d

    :cond_2a
    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->generateFolder()V

    :goto_2d
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher/views/AdaptiveScreenRotateLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    and-int/lit16 p1, v0, 0x1480

    if-eqz p1, :cond_25

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/AbstractPagePreviewButtonContainer;->reInflateView()V

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->updatePagePreviewButtonView()V

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->adaptWallpaperBrightState()V

    :cond_25
    return-void
.end method

.method public onWallpaperBrightnessChanged()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->adaptWallpaperBrightState()V

    return-void
.end method

.method public setFolderFormBtnEnable(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mFolderFormBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mFolderFormBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1a

    const-string/jumbo v0, "setFolderFormBtnEnable -- enable = "

    const-string v1, "PagePreviewButtonContainer2"

    invoke-static {v0, p1, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_1a
    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mFolderFormBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {p0, p1}, Lcom/android/launcher/views/PressFeedbackButton;->setEnabled(Z)V

    :cond_1f
    return-void
.end method

.method public setRemoveBtnState(ZLcom/android/launcher/Launcher;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mRemoveBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mRemoveBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1a

    const-string/jumbo v0, "setRemoveBtnEnable -- enable = "

    const-string v1, "PagePreviewButtonContainer2"

    invoke-static {v0, p1, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_1a
    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mRemoveBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {v0, p1}, Lcom/android/launcher/views/PressFeedbackButton;->setEnabled(Z)V

    :cond_1f
    invoke-virtual {p2}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_8a

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_8a

    :cond_38
    invoke-virtual {p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_42
    :goto_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v3, :cond_42

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-static {v2, p2}, Lcom/android/common/util/PackageUtils;->isCanUninstall(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_61

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_61
    invoke-static {v2}, Lcom/android/common/util/PackageUtils;->isCanDeleteIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result v2

    if-eqz v2, :cond_42

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_6a
    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mRemoveBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-eqz p0, :cond_8a

    if-lez v0, :cond_79

    if-lez v1, :cond_79

    const p1, 0x7f120124

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(I)V

    goto :goto_8a

    :cond_79
    if-lez v0, :cond_82

    const p1, 0x7f12056b

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(I)V

    goto :goto_8a

    :cond_82
    if-lez v1, :cond_8a

    const p1, 0x7f12044a

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(I)V

    :cond_8a
    :goto_8a
    return-void
.end method

.method public setupCancelButtonState()V
    .registers 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->notifyDragButtonState(Z)V

    return-void
.end method

.method public setupDefaultButtonState()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->notifyDragButtonState(Z)V

    return-void
.end method

.method public setupViews()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/AbstractPagePreviewButtonContainer;->reInflateView()V

    return-void
.end method

.method public updatePagePreviewButtonColor()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mRemoveBtn:Lcom/android/launcher/views/PressFeedbackButton;

    const-string v1, "PagePreviewButtonContainer2"

    if-nez v0, :cond_d

    const-string/jumbo p0, "updatePagePreviewButtonColor, mRemoveBtn == null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewButtonContainer;->mFolderFormBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-nez p0, :cond_17

    const-string/jumbo p0, "updatePagePreviewButtonColor, mFolderFormBtn == null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    return-void
.end method
