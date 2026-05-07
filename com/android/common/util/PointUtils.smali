.class public final Lcom/android/common/util/PointUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/util/PointUtils$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/common/util/PointUtils$Companion;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/PointUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/PointUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/common/util/PointUtils;->Companion:Lcom/android/common/util/PointUtils$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final offsetPointAboutPoint(IIFLandroid/graphics/PointF;)Landroid/graphics/Point;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PointUtils;->Companion:Lcom/android/common/util/PointUtils$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/common/util/PointUtils$Companion;->offsetPointAboutPoint(IIFLandroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static final offsetRectAboutPoint(Landroid/graphics/Rect;FLandroid/graphics/PointF;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PointUtils;->Companion:Lcom/android/common/util/PointUtils$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/common/util/PointUtils$Companion;->offsetRectAboutPoint(Landroid/graphics/Rect;FLandroid/graphics/PointF;)V

    return-void
.end method

.method public static final offsetRectFAboutPoint(Landroid/graphics/RectF;FLandroid/graphics/PointF;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PointUtils;->Companion:Lcom/android/common/util/PointUtils$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/common/util/PointUtils$Companion;->offsetRectFAboutPoint(Landroid/graphics/RectF;FLandroid/graphics/PointF;)V

    return-void
.end method

.method public static scaleRectAboutCenter(Landroid/graphics/Rect;FF)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PointUtils;->Companion:Lcom/android/common/util/PointUtils$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/common/util/PointUtils$Companion;->scaleRectAboutCenter(Landroid/graphics/Rect;FF)V

    return-void
.end method

.method public static scaleRectFAboutPoint(Landroid/graphics/RectF;FLandroid/graphics/PointF;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PointUtils;->Companion:Lcom/android/common/util/PointUtils$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/common/util/PointUtils$Companion;->scaleRectFAboutPoint(Landroid/graphics/RectF;FLandroid/graphics/PointF;)V

    return-void
.end method
