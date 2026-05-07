.class public final synthetic Lcom/android/common/util/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;
.implements Lcom/oplus/seedling/sdk/recommendlist/ListObserver;
.implements Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;
.implements Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;
.implements Lcom/oplus/statistics/util/Supplier;


# static fields
.field public static final synthetic b:Lcom/android/common/util/p;

.field public static final synthetic c:Lcom/android/common/util/p;

.field public static final synthetic d:Lcom/android/common/util/p;

.field public static final synthetic e:Lcom/android/common/util/p;

.field public static final synthetic f:Lcom/android/common/util/p;

.field public static final synthetic g:Lcom/android/common/util/p;

.field public static final synthetic h:Lcom/android/common/util/p;

.field public static final synthetic i:Lcom/android/common/util/p;

.field public static final synthetic j:Lcom/android/common/util/p;

.field public static final synthetic k:Lcom/android/common/util/p;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/p;-><init>(I)V

    sput-object v0, Lcom/android/common/util/p;->b:Lcom/android/common/util/p;

    new-instance v0, Lcom/android/common/util/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/common/util/p;-><init>(I)V

    sput-object v0, Lcom/android/common/util/p;->c:Lcom/android/common/util/p;

    new-instance v0, Lcom/android/common/util/p;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/common/util/p;-><init>(I)V

    sput-object v0, Lcom/android/common/util/p;->d:Lcom/android/common/util/p;

    new-instance v0, Lcom/android/common/util/p;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/common/util/p;-><init>(I)V

    sput-object v0, Lcom/android/common/util/p;->e:Lcom/android/common/util/p;

    new-instance v0, Lcom/android/common/util/p;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/common/util/p;-><init>(I)V

    sput-object v0, Lcom/android/common/util/p;->f:Lcom/android/common/util/p;

    new-instance v0, Lcom/android/common/util/p;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/common/util/p;-><init>(I)V

    sput-object v0, Lcom/android/common/util/p;->g:Lcom/android/common/util/p;

    new-instance v0, Lcom/android/common/util/p;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/common/util/p;-><init>(I)V

    sput-object v0, Lcom/android/common/util/p;->h:Lcom/android/common/util/p;

    new-instance v0, Lcom/android/common/util/p;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/common/util/p;-><init>(I)V

    sput-object v0, Lcom/android/common/util/p;->i:Lcom/android/common/util/p;

    new-instance v0, Lcom/android/common/util/p;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/common/util/p;-><init>(I)V

    sput-object v0, Lcom/android/common/util/p;->j:Lcom/android/common/util/p;

    new-instance v0, Lcom/android/common/util/p;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/android/common/util/p;-><init>(I)V

    sput-object v0, Lcom/android/common/util/p;->k:Lcom/android/common/util/p;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/common/util/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 1

    iget p0, p0, Lcom/android/common/util/p;->a:I

    packed-switch p0, :pswitch_data_16

    goto :goto_10

    :pswitch_6  #0x8
    invoke-static {}, Lcom/oplus/statistics/OplusTrack;->r()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b  #0x7
    invoke-static {}, Lcom/oplus/statistics/OplusTrack;->t()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_10
    invoke-static {}, Lcom/oplus/statistics/record/ContentProviderRecorder;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x7
        :pswitch_b  #00000007
        :pswitch_6  #00000008
    .end packed-switch
.end method

.method public get(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/common/util/p;->a:I

    packed-switch p0, :pswitch_data_18

    goto :goto_11

    :pswitch_6  #0x1
    new-instance p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusInvariantDeviceProfile;-><init>(Landroid/content/Context;)V

    return-object p0

    :pswitch_c  #0x0
    invoke-static {p1}, Lcom/android/common/util/FontManager;->a(Landroid/content/Context;)Lcom/android/common/util/FontManager;

    move-result-object p0

    return-object p0

    :goto_11
    new-instance p0, Lcom/android/quickstep/util/ProtoTracer;

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/ProtoTracer;-><init>(Landroid/content/Context;)V

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method

.method public getTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 1

    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    return-object p0
.end method

.method public onListChanged(Ljava/util/List;)V
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/card/seed/SeedCardClient;->a(Ljava/util/List;)V

    return-void
.end method

.method public set(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iget p0, p0, Lcom/android/common/util/p;->a:I

    packed-switch p0, :pswitch_data_16

    goto :goto_c

    :pswitch_6  #0x3
    check-cast p3, Landroid/graphics/Insets;

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void

    :goto_c
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :pswitch_data_16
    .packed-switch 0x3
        :pswitch_6  #00000003
    .end packed-switch
.end method
