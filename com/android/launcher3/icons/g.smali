.class public final synthetic Lcom/android/launcher3/icons/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/icons/g;

.field public static final synthetic c:Lcom/android/launcher3/icons/g;

.field public static final synthetic d:Lcom/android/launcher3/icons/g;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/icons/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/g;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/icons/g;->b:Lcom/android/launcher3/icons/g;

    new-instance v0, Lcom/android/launcher3/icons/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/g;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/icons/g;->c:Lcom/android/launcher3/icons/g;

    new-instance v0, Lcom/android/launcher3/icons/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/g;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/icons/g;->d:Lcom/android/launcher3/icons/g;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/icons/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/launcher3/icons/g;->a:I

    packed-switch p0, :pswitch_data_16

    goto :goto_10

    :pswitch_6  #0x1
    invoke-static {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->f(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b  #0x0
    invoke-static {p1}, Lcom/android/launcher3/icons/IconCache;->l(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_10
    invoke-static {p1}, Lcom/android/quickstep/views/TaskView;->j(I)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_b  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
