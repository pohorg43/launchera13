.class public Lcom/android/launcher3/dragndrop/OplusSnapTargetShortCutHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final JUMP_SCREEN_INDEX_DEFAULT:I = -0x1

.field private static final SNAP_TO_PAGE_DELAY:I = 0x64

.field public static final TAG:Ljava/lang/String; = "SnapTargetShortCutHelper"

.field private static sJumpScreenOfIndexId:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/OplusWorkspace;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/dragndrop/OplusSnapTargetShortCutHelper;->lambda$snapToTargetShortcutPage$0(Lcom/android/launcher3/OplusWorkspace;I)V

    return-void
.end method

.method public static getJumpScreenOfIndexId()I
    .registers 1

    sget v0, Lcom/android/launcher3/dragndrop/OplusSnapTargetShortCutHelper;->sJumpScreenOfIndexId:I

    return v0
.end method

.method private static synthetic lambda$snapToTargetShortcutPage$0(Lcom/android/launcher3/OplusWorkspace;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    return-void
.end method

.method public static setJumpScreenOfIndexId(I)V
    .registers 1

    sput p0, Lcom/android/launcher3/dragndrop/OplusSnapTargetShortCutHelper;->sJumpScreenOfIndexId:I

    return-void
.end method

.method public static snapToTargetShortcutPage(Lcom/android/launcher3/OplusWorkspace;Landroid/os/Handler;Z)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-static {}, Lcom/android/launcher3/dragndrop/OplusSnapTargetShortCutHelper;->getJumpScreenOfIndexId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v1

    invoke-static {}, Lcom/android/launcher3/dragndrop/AddItemActivity;->isCreateShortcutForPopup()Z

    move-result v2

    if-eqz v2, :cond_2f

    if-eq v0, v1, :cond_2f

    if-eqz p2, :cond_2f

    new-instance p2, Lcom/android/launcher3/allapps/k;

    invoke-direct {p2, p0, v1}, Lcom/android/launcher3/allapps/k;-><init>(Lcom/android/launcher3/OplusWorkspace;I)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->setCreateShortcutForPopup(Z)V

    const/4 p0, -0x1

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/OplusSnapTargetShortCutHelper;->setJumpScreenOfIndexId(I)V

    const-string p0, "SnapTargetShortCutHelper"

    const-string p1, "The created shortcut is from the browser and has been redirected to the corresponding screen."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    return-void
.end method
