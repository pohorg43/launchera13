.class public final synthetic Lcom/android/launcher3/popup/pendingcard/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/popup/pendingcard/h;

.field public static final synthetic c:Lcom/android/launcher3/popup/pendingcard/h;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/pendingcard/h;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/popup/pendingcard/h;->b:Lcom/android/launcher3/popup/pendingcard/h;

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/pendingcard/h;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/popup/pendingcard/h;->c:Lcom/android/launcher3/popup/pendingcard/h;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 2

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/h;->a:I

    packed-switch p0, :pswitch_data_10

    goto :goto_b

    :pswitch_6  #0x0
    invoke-static {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->a(F)F

    move-result p0

    return p0

    :goto_b
    invoke-static {p1}, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;->a(F)F

    move-result p0

    return p0

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
