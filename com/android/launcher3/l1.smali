.class public final synthetic Lcom/android/launcher3/l1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/l1;

.field public static final synthetic c:Lcom/android/launcher3/l1;

.field public static final synthetic d:Lcom/android/launcher3/l1;

.field public static final synthetic e:Lcom/android/launcher3/l1;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/l1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/l1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/l1;->b:Lcom/android/launcher3/l1;

    new-instance v0, Lcom/android/launcher3/l1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/l1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/l1;->c:Lcom/android/launcher3/l1;

    new-instance v0, Lcom/android/launcher3/l1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/l1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/l1;->d:Lcom/android/launcher3/l1;

    new-instance v0, Lcom/android/launcher3/l1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher3/l1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/l1;->e:Lcom/android/launcher3/l1;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/l1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/l1;->a:I

    packed-switch p0, :pswitch_data_22

    goto :goto_1b

    :pswitch_6  #0x2
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->i(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0

    :pswitch_d  #0x1
    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/appprediction/PredictionRowView;->b(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :pswitch_14  #0x0
    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :goto_1b
    check-cast p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-static {p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->c(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result p0

    return p0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_14  #00000000
        :pswitch_d  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
