.class public final synthetic Lcom/android/launcher3/model/a1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/model/a1;

.field public static final synthetic c:Lcom/android/launcher3/model/a1;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/model/a1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/a1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/a1;->b:Lcom/android/launcher3/model/a1;

    new-instance v0, Lcom/android/launcher3/model/a1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/a1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/a1;->c:Lcom/android/launcher3/model/a1;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/model/a1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    iget p0, p0, Lcom/android/launcher3/model/a1;->a:I

    packed-switch p0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :goto_c
    invoke-static {}, Lcom/android/launcher3/testing/TestInformationHandler;->e()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
