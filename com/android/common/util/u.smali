.class public final synthetic Lcom/android/common/util/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic b:Lcom/android/common/util/u;

.field public static final synthetic c:Lcom/android/common/util/u;

.field public static final synthetic d:Lcom/android/common/util/u;

.field public static final synthetic e:Lcom/android/common/util/u;

.field public static final synthetic f:Lcom/android/common/util/u;

.field public static final synthetic g:Lcom/android/common/util/u;

.field public static final synthetic h:Lcom/android/common/util/u;

.field public static final synthetic i:Lcom/android/common/util/u;

.field public static final synthetic j:Lcom/android/common/util/u;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/u;-><init>(I)V

    sput-object v0, Lcom/android/common/util/u;->b:Lcom/android/common/util/u;

    new-instance v0, Lcom/android/common/util/u;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/common/util/u;-><init>(I)V

    sput-object v0, Lcom/android/common/util/u;->c:Lcom/android/common/util/u;

    new-instance v0, Lcom/android/common/util/u;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/common/util/u;-><init>(I)V

    sput-object v0, Lcom/android/common/util/u;->d:Lcom/android/common/util/u;

    new-instance v0, Lcom/android/common/util/u;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/common/util/u;-><init>(I)V

    sput-object v0, Lcom/android/common/util/u;->e:Lcom/android/common/util/u;

    new-instance v0, Lcom/android/common/util/u;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/common/util/u;-><init>(I)V

    sput-object v0, Lcom/android/common/util/u;->f:Lcom/android/common/util/u;

    new-instance v0, Lcom/android/common/util/u;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/common/util/u;-><init>(I)V

    sput-object v0, Lcom/android/common/util/u;->g:Lcom/android/common/util/u;

    new-instance v0, Lcom/android/common/util/u;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/common/util/u;-><init>(I)V

    sput-object v0, Lcom/android/common/util/u;->h:Lcom/android/common/util/u;

    new-instance v0, Lcom/android/common/util/u;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/common/util/u;-><init>(I)V

    sput-object v0, Lcom/android/common/util/u;->i:Lcom/android/common/util/u;

    new-instance v0, Lcom/android/common/util/u;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/common/util/u;-><init>(I)V

    sput-object v0, Lcom/android/common/util/u;->j:Lcom/android/common/util/u;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/common/util/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget p0, p0, Lcom/android/common/util/u;->a:I

    packed-switch p0, :pswitch_data_46

    goto :goto_3e

    :pswitch_6  #0x7
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/launcher3/widget/WidgetControlHelper;->b(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_d  #0x6
    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/model/ModelUtils;->d(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :pswitch_14  #0x5
    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/model/BgDataModel;->b(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result p0

    return p0

    :pswitch_1b  #0x4
    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->h(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result p0

    return p0

    :pswitch_22  #0x3
    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_29  #0x2
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_30  #0x1
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_37  #0x0
    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/common/util/LauncherLayoutUtils;->e(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :goto_3e
    check-cast p1, Lcom/oplus/channel/server/data/Command;

    invoke-static {p1}, Lcom/oplus/channel/server/ClientProxyImpl;->g(Lcom/oplus/channel/server/data/Command;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_37  #00000000
        :pswitch_30  #00000001
        :pswitch_29  #00000002
        :pswitch_22  #00000003
        :pswitch_1b  #00000004
        :pswitch_14  #00000005
        :pswitch_d  #00000006
        :pswitch_6  #00000007
    .end packed-switch
.end method
