.class Lcom/android/launcher3/LauncherState$2;
.super Lcom/android/launcher3/LauncherState$PageTranslationProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherState$PageTranslationProvider;-><init>(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public getPageTranslation(I)F
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
