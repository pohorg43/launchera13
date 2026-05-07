.class public final Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion$OPLUS_RECT_SCALE_PROGRESS$1;
.super Lcom/oplus/animation/FloatPropertyCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/util/OplusRectFSpringAnim;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/animation/FloatPropertyCompat<",
        "Lcom/android/quickstep/util/OplusRectFSpringAnim;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "rectScaleProgress"

    invoke-direct {p0, v0}, Lcom/oplus/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/android/quickstep/util/OplusRectFSpringAnim;)F
    .registers 2

    const-string p0, "anim"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p1, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentScaleProgress:F

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    check-cast p1, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion$OPLUS_RECT_SCALE_PROGRESS$1;->getValue(Lcom/android/quickstep/util/OplusRectFSpringAnim;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/android/quickstep/util/OplusRectFSpringAnim;F)V
    .registers 3

    const-string p0, "anim"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput p2, p1, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentScaleProgress:F

    sget-object p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;->TYPE_SCALE:Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->onUpdateIfNeed(Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion$OPLUS_RECT_SCALE_PROGRESS$1;->setValue(Lcom/android/quickstep/util/OplusRectFSpringAnim;F)V

    return-void
.end method
