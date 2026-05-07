.class public final synthetic Lcom/android/launcher3/model/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/model/u;

.field public static final synthetic c:Lcom/android/launcher3/model/u;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/model/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/u;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/u;->b:Lcom/android/launcher3/model/u;

    new-instance v0, Lcom/android/launcher3/model/u;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/u;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/u;->c:Lcom/android/launcher3/model/u;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/model/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    iget p0, p0, Lcom/android/launcher3/model/u;->a:I

    packed-switch p0, :pswitch_data_16

    goto :goto_c

    :pswitch_6  #0x0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :goto_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
