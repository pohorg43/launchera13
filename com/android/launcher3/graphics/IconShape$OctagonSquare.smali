.class public Lcom/android/launcher3/graphics/IconShape$OctagonSquare;
.super Lcom/android/launcher3/graphics/IconShape$PathShape;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/IconShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OctagonSquare"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;
    }
.end annotation


# static fields
.field private static final CTAN:F = 2.840909f

.field private static final DFLT_ICON_SIZE:I = 0x96

.field private static final DFLT_START_X:I = 0x2e

.field private static final DFLT_TRIGLE_LEN:I = 0x22

.field private static final QUAD_CTRL_POINT_RATIO:F = 0.33333334f

.field private static final RATE:F = 3.840909f

.field private static final TAG:Ljava/lang/String; = "OctagonSquare"


# instance fields
.field private mIconWH:I

.field private final mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

.field private final mLeftTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

.field private mOffsetXY:I

.field private final mPath:Landroid/graphics/Path;

.field private final mRadiusRatio:F

.field private final mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

.field private final mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

.field private mStartPointX:I

.field private mTrigleLen:I


# direct methods
.method public constructor <init>(F)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/graphics/IconShape$PathShape;-><init>(Lcom/android/launcher3/graphics/IconShape$1;)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mPath:Landroid/graphics/Path;

    new-instance v1, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-direct {v1, v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;-><init>(Lcom/android/launcher3/graphics/IconShape$1;)V

    iput-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    new-instance v1, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-direct {v1, v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;-><init>(Lcom/android/launcher3/graphics/IconShape$1;)V

    iput-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    new-instance v1, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-direct {v1, v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;-><init>(Lcom/android/launcher3/graphics/IconShape$1;)V

    iput-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    new-instance v1, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-direct {v1, v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;-><init>(Lcom/android/launcher3/graphics/IconShape$1;)V

    iput-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    iput p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRadiusRatio:F

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/graphics/IconShape$OctagonSquare;Landroid/graphics/Path;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->lambda$newUpdateListener$0(Landroid/graphics/Path;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private synthetic lambda$newUpdateListener$0(Landroid/graphics/Path;Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->updatePath(F)V

    iget-object p0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private setParams(II)V
    .registers 4

    iput p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mIconWH:I

    int-to-float p1, p1

    const/high16 v0, 0x43160000  # 150.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x42080000  # 34.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mTrigleLen:I

    const/high16 v0, 0x42380000  # 46.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mStartPointX:I

    iput p2, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mOffsetXY:I

    const-string p1, "OctagonSquare: mIconWH: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mIconWH:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mTrigleLen: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mTrigleLen:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mStartPointX: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mStartPointX:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mOffsetXY: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mOffsetXY:I

    const-string p2, "OctagonSquare"

    invoke-static {p1, p0, p2}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method private updatePath(F)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$300(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mIconWH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mStartPointX:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$500(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mIconWH:I

    int-to-float v1, v1

    iget v3, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mTrigleLen:I

    int-to-float v4, v3

    mul-float/2addr v4, p1

    sub-float/2addr v1, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    const v4, 0x4075d174

    div-float/2addr v3, v4

    const v5, 0x3eaaaaab

    mul-float/2addr v3, v5

    invoke-static {v0, v1, v3}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$600(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mIconWH:I

    int-to-float v1, v1

    iget v3, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mTrigleLen:I

    int-to-float v5, v3

    mul-float/2addr v5, p1

    div-float/2addr v5, v4

    const v6, 0x4035d174

    mul-float/2addr v5, v6

    sub-float/2addr v1, v5

    int-to-float v3, v3

    mul-float/2addr v3, p1

    div-float/2addr v3, v4

    invoke-static {v0, v1, v3}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$700(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mIconWH:I

    int-to-float v1, v1

    iget v3, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mTrigleLen:I

    int-to-float v5, v3

    mul-float/2addr v5, p1

    div-float/2addr v5, v4

    sub-float/2addr v1, v5

    int-to-float v3, v3

    mul-float/2addr v3, p1

    div-float/2addr v3, v4

    mul-float/2addr v3, v6

    invoke-static {v0, v1, v3}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$800(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mIconWH:I

    iget-object v3, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v3}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$500(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mIconWH:I

    iget-object v4, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v4}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$500(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v0, v1, v3}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$900(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mIconWH:I

    int-to-float v1, v1

    iget v3, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mStartPointX:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    invoke-static {v0, v1, v3}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$1000(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mIconWH:I

    int-to-float v3, v1

    int-to-float v1, v1

    iget v4, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mStartPointX:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    sub-float/2addr v1, v4

    invoke-static {v0, v3, v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {p1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$300(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$1000(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$1000(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {p1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$500(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$800(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mIconWH:I

    iget-object v3, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v3}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$800(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {p1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$600(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$700(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mIconWH:I

    iget-object v3, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v3}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$700(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {p1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$700(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$600(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mIconWH:I

    iget-object v3, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v3}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$600(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {p1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$800(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$500(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mIconWH:I

    iget-object v3, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v3}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$500(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {p1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$900(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$300(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mIconWH:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {p1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$1000(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mIconWH:I

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$1000(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mIconWH:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {p1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$300(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$1000(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$1000(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {p1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$500(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mIconWH:I

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$800(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$800(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {p1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$600(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mIconWH:I

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$700(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$700(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {p1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$700(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mIconWH:I

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$600(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$600(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {p1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$800(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mIconWH:I

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$500(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$500(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {p1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$900(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$300(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-static {p1, v2, v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {p1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$1000(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$1000(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-static {p1, v2, v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {p1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$300(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$1000(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$1000(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {p1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$500(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$800(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mIconWH:I

    iget-object v3, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v3}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$800(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {p1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$600(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$700(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mIconWH:I

    iget-object v3, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v3}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$700(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {p1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$700(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$600(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mIconWH:I

    iget-object v3, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v3}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$600(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {p1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$800(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$500(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mIconWH:I

    iget-object v3, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v3}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$500(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {p1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$900(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$300(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-static {p1, v0, v2}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {p1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$1000(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mIconWH:I

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$1000(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {p1, v0, v2}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$400(Landroid/graphics/Point;FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$300(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$300(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$500(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$500(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v2}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$600(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v3}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$600(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$700(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$700(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$800(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$800(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v2}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$900(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v3}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$900(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$1000(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$1000(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$500(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$500(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v2}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$600(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v3}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$600(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$700(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$700(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$800(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$800(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v2}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$900(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v3}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$900(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$1000(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRightBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$1000(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$500(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$500(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v2}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$600(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v3}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$600(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$700(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$700(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$800(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$800(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v2}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$900(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v3}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$900(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$1000(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftBottom:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$1000(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$500(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$500(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v2}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$600(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v3}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$600(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$700(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$700(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$800(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$800(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v2}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$900(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v3}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$900(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$1000(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mLeftTop:Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;->access$1000(Lcom/android/launcher3/graphics/IconShape$OctagonSquare$PathPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mPath:Landroid/graphics/Path;

    iget p0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mOffsetXY:I

    int-to-float v0, p0

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Path;->offset(FF)V

    return-void
.end method


# virtual methods
.method public addToPath(Landroid/graphics/Path;FFF)V
    .registers 13

    add-float/2addr p2, p4

    add-float/2addr p3, p4

    iget p0, p0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->mRadiusRatio:F

    mul-float v6, p4, p0

    sub-float v1, p2, p4

    sub-float v2, p3, p4

    add-float v3, p2, p4

    add-float v4, p3, p4

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v0, p1

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public getDfltIconPath()Landroid/graphics/Path;
    .registers 1

    sget-object p0, Lcom/android/launcher/theme/LauncherIconConfig;->sOctagonPath:Landroid/graphics/Path;

    return-object p0
.end method

.method public newUpdateListener(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Path;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .registers 6

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "newUpdateListener: startRect: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", endRect: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OctagonSquare"

    invoke-static {p3, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget p1, p1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->setParams(II)V

    new-instance p1, Lcom/android/launcher3/w0;

    invoke-direct {p1, p0, p4}, Lcom/android/launcher3/w0;-><init>(Lcom/android/launcher3/graphics/IconShape$OctagonSquare;Landroid/graphics/Path;)V

    return-object p1
.end method
