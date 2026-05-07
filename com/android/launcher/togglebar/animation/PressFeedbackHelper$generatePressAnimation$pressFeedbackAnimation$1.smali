.class public final Lcom/android/launcher/togglebar/animation/PressFeedbackHelper$generatePressAnimation$pressFeedbackAnimation$1;
.super Landroid/view/animation/ScaleAnimation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;->generatePressAnimation$OplusLauncher_OPPOPallExportAallRelease(Landroid/view/View;FLcom/android/launcher/togglebar/animation/PressFeedbackHelper$AlphaColorCallback;)Landroid/view/animation/ScaleAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $callback:Lcom/android/launcher/togglebar/animation/PressFeedbackHelper$AlphaColorCallback;

.field public final synthetic $minScale:F


# direct methods
.method public constructor <init>(Lcom/android/launcher/togglebar/animation/PressFeedbackHelper$AlphaColorCallback;FFF)V
    .registers 12

    iput-object p1, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper$generatePressAnimation$pressFeedbackAnimation$1;->$callback:Lcom/android/launcher/togglebar/animation/PressFeedbackHelper$AlphaColorCallback;

    iput p2, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper$generatePressAnimation$pressFeedbackAnimation$1;->$minScale:F

    const/high16 v1, 0x3f800000  # 1.0f

    const/high16 v3, 0x3f800000  # 1.0f

    move-object v0, p0

    move v2, p2

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 4

    const-string/jumbo v0, "t"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/view/animation/ScaleAnimation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper$generatePressAnimation$pressFeedbackAnimation$1;->$callback:Lcom/android/launcher/togglebar/animation/PressFeedbackHelper$AlphaColorCallback;

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper$AlphaColorCallback;->alphaColor(FZ)V

    return-void
.end method
