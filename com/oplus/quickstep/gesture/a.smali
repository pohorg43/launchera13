.class public final synthetic Lcom/oplus/quickstep/gesture/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(FI)V
    .registers 4

    iput p2, p0, Lcom/oplus/quickstep/gesture/a;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/quickstep/gesture/a;->b:F

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/gesture/a;->a:I

    packed-switch v0, :pswitch_data_14

    goto :goto_d

    :pswitch_6  #0x0
    iget p0, p0, Lcom/oplus/quickstep/gesture/a;->b:F

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->k0(FF)F

    move-result p0

    return p0

    :goto_d
    iget p0, p0, Lcom/oplus/quickstep/gesture/a;->b:F

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->w0(FF)F

    move-result p0

    return p0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
