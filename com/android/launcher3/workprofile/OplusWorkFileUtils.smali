.class public Lcom/android/launcher3/workprofile/OplusWorkFileUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.android.launcher.Launcher"

.field private static final TAG:Ljava/lang/String; = "OplusPersonalWorkTip"

.field private static final WORK_FOLDER_CREATE:Ljava/lang/String; = "work_folder_create"

.field private static mPlayCount:I

.field private static mWorkFileTipAnim:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/workprofile/OplusWorkFileUtils;->lambda$startAnim$1(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/Launcher;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/workprofile/OplusWorkFileUtils;->lambda$snapToPageToWorkPage$0(Lcom/android/launcher/Launcher;I)V

    return-void
.end method

.method public static doWorkFeedbackAnim(Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 10

    sget v0, Lcom/android/launcher3/workprofile/OplusWorkFileUtils;->mPlayCount:I

    const v1, 0x3f2b851f  # 0.67f

    const/4 v2, 0x0

    const v3, 0x3ea8f5c3  # 0.33f

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_4f

    const/4 v7, 0x2

    if-ne v0, v7, :cond_13

    goto :goto_4f

    :cond_13
    if-eq v0, v6, :cond_2e

    const/4 v7, 0x3

    if-ne v0, v7, :cond_19

    goto :goto_2e

    :cond_19
    sget-object v0, Lcom/android/launcher3/workprofile/OplusWorkFileUtils;->mWorkFileTipAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/android/launcher3/workprofile/OplusWorkFileUtils;->mWorkFileTipAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_28
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/workprofile/OplusWorkFileUtils;->mWorkFileTipAnim:Landroid/animation/ObjectAnimator;

    sput v5, Lcom/android/launcher3/workprofile/OplusWorkFileUtils;->mPlayCount:I

    goto :goto_72

    :cond_2e
    :goto_2e
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    new-array v7, v6, [F

    aput v4, v7, v5

    invoke-static {p0, v0, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/workprofile/OplusWorkFileUtils;->mWorkFileTipAnim:Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    invoke-direct {v5, v3, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v0, Lcom/android/launcher3/workprofile/OplusWorkFileUtils;->mWorkFileTipAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/android/launcher3/workprofile/OplusWorkFileUtils;->mWorkFileTipAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_72

    :cond_4f
    :goto_4f
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    new-array v7, v6, [F

    const v8, 0x3f8ccccd  # 1.1f

    aput v8, v7, v5

    invoke-static {p0, v0, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/workprofile/OplusWorkFileUtils;->mWorkFileTipAnim:Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    invoke-direct {v5, v3, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v0, Lcom/android/launcher3/workprofile/OplusWorkFileUtils;->mWorkFileTipAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xfc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/android/launcher3/workprofile/OplusWorkFileUtils;->mWorkFileTipAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_72
    sget v0, Lcom/android/launcher3/workprofile/OplusWorkFileUtils;->mPlayCount:I

    add-int/2addr v0, v6

    sput v0, Lcom/android/launcher3/workprofile/OplusWorkFileUtils;->mPlayCount:I

    sget-object v0, Lcom/android/launcher3/workprofile/OplusWorkFileUtils;->mWorkFileTipAnim:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_7c

    return-void

    :cond_7c
    new-instance v1, Lcom/android/launcher3/workprofile/OplusWorkFileUtils$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/workprofile/OplusWorkFileUtils$1;-><init>(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public static getRunningActivityName(Lcom/android/launcher/Launcher;)Ljava/lang/String;
    .registers 4

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_37

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_37

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_37

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_37
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$snapToPageToWorkPage$0(Lcom/android/launcher/Launcher;I)V
    .registers 4

    invoke-static {p0}, Lcom/android/launcher3/workprofile/OplusWorkFileUtils;->getRunningActivityName(Lcom/android/launcher/Launcher;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.launcher.Launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart postDelayed page ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusPersonalWorkTip"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    :cond_29
    return-void
.end method

.method private static synthetic lambda$startAnim$1(Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/workprofile/OplusWorkFileUtils;->doWorkFeedbackAnim(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    return-void
.end method

.method public static snapToPageToWorkPage(Lcom/android/launcher/Launcher;Landroid/content/Context;)V
    .registers 5

    const-string/jumbo v0, "work_folder_create"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_68

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result v0

    if-eqz v0, :cond_68

    const v0, 0x7f1205d4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/BgDataModel;->findFolderByTitle(Ljava/lang/String;)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p1

    if-eqz p1, :cond_68

    const-string v0, "onStart otherAppFolderInfo screenId="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusPersonalWorkTip"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result p1

    const-string v0, "onStart page ="

    invoke-static {v0, p1, v1}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, -0x1

    if-le p1, v0, :cond_68

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher/y;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p1, v2}, Lcom/android/launcher/y;-><init>(Lcom/android/launcher/Launcher;II)V

    const-wide/16 p0, 0x5dc

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_68
    return-void
.end method

.method public static startAnim(Lcom/android/launcher3/OplusWorkspace;Landroid/content/Context;)V
    .registers 10

    const-string/jumbo v0, "work_folder_create"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_a5

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result v2

    if-eqz v2, :cond_a5

    const v2, 0x7f1205d4

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/model/BgDataModel;->findFolderByTitle(Ljava/lang/String;)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v3

    if-eqz v3, :cond_a5

    const-string v4, "onStart otherAppFolderInfo screenId="

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    const-string v6, "OplusPersonalWorkTip"

    invoke-static {v4, v5, v6}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p0, v4}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ne v4, v5, :cond_a5

    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    :goto_5e
    if-ge v1, v4, :cond_a5

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v6, v6, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v6, :cond_a2

    instance-of v6, v5, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v6, :cond_a2

    check-cast v5, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a2

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/folder/n;

    const/4 v2, 0x4

    invoke-direct {v1, v5, v2}, Lcom/android/launcher3/folder/n;-><init>(Lcom/android/launcher3/folder/OplusFolderIcon;I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    invoke-static {p1, v0, p0}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_a5

    :cond_a2
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    :cond_a5
    :goto_a5
    return-void
.end method
