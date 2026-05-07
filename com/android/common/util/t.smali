.class public final synthetic Lcom/android/common/util/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic b:Lcom/android/common/util/t;

.field public static final synthetic c:Lcom/android/common/util/t;

.field public static final synthetic d:Lcom/android/common/util/t;

.field public static final synthetic e:Lcom/android/common/util/t;

.field public static final synthetic f:Lcom/android/common/util/t;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/t;-><init>(I)V

    sput-object v0, Lcom/android/common/util/t;->b:Lcom/android/common/util/t;

    new-instance v0, Lcom/android/common/util/t;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/common/util/t;-><init>(I)V

    sput-object v0, Lcom/android/common/util/t;->c:Lcom/android/common/util/t;

    new-instance v0, Lcom/android/common/util/t;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/common/util/t;-><init>(I)V

    sput-object v0, Lcom/android/common/util/t;->d:Lcom/android/common/util/t;

    new-instance v0, Lcom/android/common/util/t;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/common/util/t;-><init>(I)V

    sput-object v0, Lcom/android/common/util/t;->e:Lcom/android/common/util/t;

    new-instance v0, Lcom/android/common/util/t;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/common/util/t;-><init>(I)V

    sput-object v0, Lcom/android/common/util/t;->f:Lcom/android/common/util/t;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/common/util/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget p0, p0, Lcom/android/common/util/t;->a:I

    packed-switch p0, :pswitch_data_2a

    goto :goto_22

    :pswitch_6  #0x3
    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_d  #0x2
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_14  #0x1
    check-cast p1, Lcom/android/launcher3/OplusDeviceProfile;

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->j(Lcom/android/launcher3/OplusDeviceProfile;)Z

    move-result p0

    return p0

    :pswitch_1b  #0x0
    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/common/util/LauncherLayoutUtils;->f(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :goto_22
    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    invoke-static {p1}, Lcom/android/launcher3/popup/PopupDataProvider;->c(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1b  #00000000
        :pswitch_14  #00000001
        :pswitch_d  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
