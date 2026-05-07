.class public final synthetic Lcom/android/launcher3/util/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/h;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/util/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/h;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/util/h;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/util/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;->a(Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;Ljava/lang/Integer;Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;)V

    return-void

    :goto_12
    iget-object p0, p0, Lcom/android/launcher3/util/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->a(Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;Ljava/lang/Integer;Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
