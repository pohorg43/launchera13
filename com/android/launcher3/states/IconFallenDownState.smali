.class public Lcom/android/launcher3/states/IconFallenDownState;
.super Lcom/android/launcher3/states/OplusBaseLauncherState;
.source ""


# static fields
.field private static final STATE_FLAGS:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget v0, Lcom/android/launcher3/LauncherState;->FLAG_WORKSPACE_INACCESSIBLE:I

    or-int/lit8 v0, v0, 0x2

    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_MULTI_PAGE:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_HIDE_BACK_BUTTON:I

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/launcher3/states/IconFallenDownState;->STATE_FLAGS:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    sget v0, Lcom/android/launcher3/states/IconFallenDownState;->STATE_FLAGS:I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/states/OplusBaseLauncherState;-><init>(III)V

    return-void
.end method


# virtual methods
.method public getTransitionDuration(Landroid/content/Context;Z)I
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public getVisibleElements(Lcom/android/launcher3/Launcher;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressed(Lcom/android/launcher3/Launcher;)V
    .registers 2

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getIconFallenStatesTouchController()Lcom/android/launcher/touch/IconFallenStatesTouchController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->resetFallenIcons()V

    return-void
.end method

.method public shouldResetWorkspaceTranslationAndScale()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
