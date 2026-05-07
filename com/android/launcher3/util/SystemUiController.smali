.class public Lcom/android/launcher3/util/SystemUiController;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final FLAG_DARK_NAV:I = 0x2

.field public static final FLAG_DARK_STATUS:I = 0x8

.field public static final FLAG_LIGHT_NAV:I = 0x1

.field public static final FLAG_LIGHT_STATUS:I = 0x4

.field public static final UI_STATE_ALLAPPS:I = 0x4

.field public static final UI_STATE_BASE_WINDOW:I = 0x0

.field public static final UI_STATE_FULLSCREEN_TASK:I = 0x3

.field public static final UI_STATE_SCRIM_VIEW:I = 0x1

.field public static final UI_STATE_WIDGET_BOTTOM_SHEET:I = 0x2


# instance fields
.field private final mStates:[I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/util/SystemUiController;->mStates:[I

    iput-object p1, p0, Lcom/android/launcher3/util/SystemUiController;->mWindow:Landroid/view/Window;

    return-void
.end method

.method private getSysUiVisibilityFlags(II)I
    .registers 3

    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_7

    or-int/lit8 p2, p2, 0x10

    goto :goto_d

    :cond_7
    and-int/lit8 p0, p1, 0x2

    if-eqz p0, :cond_d

    and-int/lit8 p2, p2, -0x11

    :cond_d
    :goto_d
    and-int/lit8 p0, p1, 0x4

    if-eqz p0, :cond_14

    or-int/lit16 p2, p2, 0x2000

    goto :goto_1a

    :cond_14
    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_1a

    and-int/lit16 p2, p2, -0x2001

    :cond_1a
    :goto_1a
    return p2
.end method


# virtual methods
.method public getBaseSysuiVisibility()I
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/util/SystemUiController;->mStates:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/launcher3/util/SystemUiController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/util/SystemUiController;->getSysUiVisibilityFlags(II)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "mStates="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/util/SystemUiController;->mStates:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateUiState(II)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/util/SystemUiController;->mStates:[I

    aget v0, v0, p1

    if-ne v0, p2, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string/jumbo v0, "updateUiState(), uiState="

    const-string v1, ", flags="

    const-string v2, "SystemUiController"

    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/common/config/g;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    :cond_17
    iget-object v0, p0, Lcom/android/launcher3/util/SystemUiController;->mStates:[I

    aput p2, v0, p1

    iget-object p1, p0, Lcom/android/launcher3/util/SystemUiController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    iget-object p2, p0, Lcom/android/launcher3/util/SystemUiController;->mStates:[I

    array-length v0, p2

    const/4 v1, 0x0

    move v2, p1

    :goto_2a
    if-ge v1, v0, :cond_35

    aget v3, p2, v1

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/util/SystemUiController;->getSysUiVisibilityFlags(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_35
    if-eq v2, p1, :cond_40

    iget-object p0, p0, Lcom/android/launcher3/util/SystemUiController;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_40
    return-void
.end method

.method public updateUiState(IZ)V
    .registers 3

    if-eqz p2, :cond_4

    const/4 p2, 0x5

    goto :goto_6

    :cond_4
    const/16 p2, 0xa

    :goto_6
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    return-void
.end method
