.class public final synthetic Lcom/android/common/util/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic b:Lcom/android/common/util/v;

.field public static final synthetic c:Lcom/android/common/util/v;

.field public static final synthetic d:Lcom/android/common/util/v;

.field public static final synthetic e:Lcom/android/common/util/v;

.field public static final synthetic f:Lcom/android/common/util/v;

.field public static final synthetic g:Lcom/android/common/util/v;

.field public static final synthetic h:Lcom/android/common/util/v;

.field public static final synthetic i:Lcom/android/common/util/v;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/v;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/v;-><init>(I)V

    sput-object v0, Lcom/android/common/util/v;->b:Lcom/android/common/util/v;

    new-instance v0, Lcom/android/common/util/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/common/util/v;-><init>(I)V

    sput-object v0, Lcom/android/common/util/v;->c:Lcom/android/common/util/v;

    new-instance v0, Lcom/android/common/util/v;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/common/util/v;-><init>(I)V

    sput-object v0, Lcom/android/common/util/v;->d:Lcom/android/common/util/v;

    new-instance v0, Lcom/android/common/util/v;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/common/util/v;-><init>(I)V

    sput-object v0, Lcom/android/common/util/v;->e:Lcom/android/common/util/v;

    new-instance v0, Lcom/android/common/util/v;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/common/util/v;-><init>(I)V

    sput-object v0, Lcom/android/common/util/v;->f:Lcom/android/common/util/v;

    new-instance v0, Lcom/android/common/util/v;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/common/util/v;-><init>(I)V

    sput-object v0, Lcom/android/common/util/v;->g:Lcom/android/common/util/v;

    new-instance v0, Lcom/android/common/util/v;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/common/util/v;-><init>(I)V

    sput-object v0, Lcom/android/common/util/v;->h:Lcom/android/common/util/v;

    new-instance v0, Lcom/android/common/util/v;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/common/util/v;-><init>(I)V

    sput-object v0, Lcom/android/common/util/v;->i:Lcom/android/common/util/v;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/common/util/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 6

    iget p0, p0, Lcom/android/common/util/v;->a:I

    packed-switch p0, :pswitch_data_4c

    goto :goto_37

    :pswitch_6  #0x6
    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    invoke-static {p1}, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm;->b(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z

    move-result p0

    return p0

    :pswitch_d  #0x5
    check-cast p1, Lcom/android/launcher3/popup/SystemShortcut;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_14  #0x4
    check-cast p1, Lcom/android/launcher3/popup/SystemShortcut;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1b  #0x3
    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-static {p1}, Lcom/android/launcher3/model/WidgetsModel;->a(Lcom/android/launcher3/model/WidgetItem;)Z

    move-result p0

    return p0

    :pswitch_22  #0x2
    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/model/PredictionHelper;->isTrackedForWidgetPrediction(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :pswitch_29  #0x1
    check-cast p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->isCountedForAccessibility()Z

    move-result p0

    return p0

    :pswitch_30  #0x0
    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/common/util/LauncherLayoutUtils;->a(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :goto_37
    check-cast p1, La4/g;

    iget-wide v0, p1, La4/g;->a:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_4a

    iget-wide p0, p1, La4/g;->b:J

    cmp-long p0, p0, v2

    if-lez p0, :cond_48

    goto :goto_4a

    :cond_48
    const/4 p0, 0x0

    goto :goto_4b

    :cond_4a
    :goto_4a
    const/4 p0, 0x1

    :goto_4b
    return p0

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_30  #00000000
        :pswitch_29  #00000001
        :pswitch_22  #00000002
        :pswitch_1b  #00000003
        :pswitch_14  #00000004
        :pswitch_d  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method
