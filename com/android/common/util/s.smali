.class public final synthetic Lcom/android/common/util/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic b:Lcom/android/common/util/s;

.field public static final synthetic c:Lcom/android/common/util/s;

.field public static final synthetic d:Lcom/android/common/util/s;

.field public static final synthetic e:Lcom/android/common/util/s;

.field public static final synthetic f:Lcom/android/common/util/s;

.field public static final synthetic g:Lcom/android/common/util/s;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/s;-><init>(I)V

    sput-object v0, Lcom/android/common/util/s;->b:Lcom/android/common/util/s;

    new-instance v0, Lcom/android/common/util/s;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/common/util/s;-><init>(I)V

    sput-object v0, Lcom/android/common/util/s;->c:Lcom/android/common/util/s;

    new-instance v0, Lcom/android/common/util/s;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/common/util/s;-><init>(I)V

    sput-object v0, Lcom/android/common/util/s;->d:Lcom/android/common/util/s;

    new-instance v0, Lcom/android/common/util/s;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/common/util/s;-><init>(I)V

    sput-object v0, Lcom/android/common/util/s;->e:Lcom/android/common/util/s;

    new-instance v0, Lcom/android/common/util/s;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/common/util/s;-><init>(I)V

    sput-object v0, Lcom/android/common/util/s;->f:Lcom/android/common/util/s;

    new-instance v0, Lcom/android/common/util/s;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/common/util/s;-><init>(I)V

    sput-object v0, Lcom/android/common/util/s;->g:Lcom/android/common/util/s;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/common/util/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget p0, p0, Lcom/android/common/util/s;->a:I

    packed-switch p0, :pswitch_data_30

    goto :goto_29

    :pswitch_6  #0x4
    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-static {p1}, Lcom/android/launcher3/widget/picker/OplusWidgetListRowEntry;->a(Lcom/android/launcher3/model/WidgetItem;)Z

    move-result p0

    return p0

    :pswitch_d  #0x3
    check-cast p1, Lcom/android/launcher3/util/ComponentKey;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_14  #0x2
    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1b  #0x1
    check-cast p1, Lcom/android/launcher3/ButtonDropTarget;

    invoke-static {p1}, Lcom/android/launcher3/DropTargetBar;->c(Lcom/android/launcher3/ButtonDropTarget;)Z

    move-result p0

    return p0

    :pswitch_22  #0x0
    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/common/util/LauncherLayoutUtils;->g(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :goto_29
    check-cast p1, Landroid/content/pm/PackageInfo;

    invoke-static {p1}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->a(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    return p0

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_22  #00000000
        :pswitch_1b  #00000001
        :pswitch_14  #00000002
        :pswitch_d  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
