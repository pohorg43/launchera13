.class public final synthetic Lcom/android/launcher3/util/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;Ljava/lang/Integer;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/util/g;->c:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/MultiScalePropertyFactory;Ljava/lang/Integer;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/util/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/util/g;->c:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/launcher3/util/g;->a:I

    packed-switch v0, :pswitch_data_20

    goto :goto_13

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/util/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;

    iget-object p0, p0, Lcom/android/launcher3/util/g;->c:Ljava/lang/Integer;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->a(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;

    move-result-object p0

    return-object p0

    :goto_13
    iget-object v0, p0, Lcom/android/launcher3/util/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/util/MultiScalePropertyFactory;

    iget-object p0, p0, Lcom/android/launcher3/util/g;->c:Ljava/lang/Integer;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->a(Lcom/android/launcher3/util/MultiScalePropertyFactory;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;

    move-result-object p0

    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
