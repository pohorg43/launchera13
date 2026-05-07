.class public final Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_Y$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/animation/FloatProperties;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "RectY"

    invoke-direct {p0, v0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/graphics/Rect;)F
    .registers 2

    if-nez p1, :cond_6

    const p0, -0x800001

    goto :goto_9

    :cond_6
    iget p0, p1, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    :goto_9
    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_Y$1;->getValue(Landroid/graphics/Rect;)F

    move-result p0

    return p0
.end method

.method public setValue(Landroid/graphics/Rect;F)V
    .registers 3

    if-nez p1, :cond_3

    goto :goto_9

    :cond_3
    iget p0, p1, Landroid/graphics/Rect;->left:I

    float-to-int p2, p2

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_9
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_Y$1;->setValue(Landroid/graphics/Rect;F)V

    return-void
.end method
