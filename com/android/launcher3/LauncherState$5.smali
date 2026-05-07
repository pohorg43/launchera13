.class Lcom/android/launcher3/LauncherState$5;
.super Lcom/android/launcher3/LauncherState$PageTranslationProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherState;->getWorkspacePageTranslationProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageTranslationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/LauncherState;

.field public final synthetic val$launcher:Lcom/android/launcher3/Launcher;

.field public final synthetic val$quarterPageSpacing:F


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherState;Landroid/view/animation/Interpolator;Lcom/android/launcher3/Launcher;F)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher3/LauncherState$5;->this$0:Lcom/android/launcher3/LauncherState;

    iput-object p3, p0, Lcom/android/launcher3/LauncherState$5;->val$launcher:Lcom/android/launcher3/Launcher;

    iput p4, p0, Lcom/android/launcher3/LauncherState$5;->val$quarterPageSpacing:F

    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherState$PageTranslationProvider;-><init>(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public getPageTranslation(I)F
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/LauncherState$5;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    if-eqz p1, :cond_13

    if-eqz v0, :cond_17

    :cond_13
    if-nez p1, :cond_1b

    if-eqz v0, :cond_1b

    :cond_17
    iget p0, p0, Lcom/android/launcher3/LauncherState$5;->val$quarterPageSpacing:F

    neg-float p0, p0

    goto :goto_1d

    :cond_1b
    iget p0, p0, Lcom/android/launcher3/LauncherState$5;->val$quarterPageSpacing:F

    :goto_1d
    return p0
.end method
