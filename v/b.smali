.class public final synthetic Lv/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    iput p2, p0, Lv/b;->a:I

    packed-switch p2, :pswitch_data_36

    goto :goto_30

    :pswitch_6  #0x7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lv/b;->b:I

    return-void

    :pswitch_c  #0x6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lv/b;->b:I

    return-void

    :pswitch_12  #0x5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lv/b;->b:I

    return-void

    :pswitch_18  #0x4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lv/b;->b:I

    return-void

    :pswitch_1e  #0x3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lv/b;->b:I

    return-void

    :pswitch_24  #0x2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lv/b;->b:I

    return-void

    :pswitch_2a  #0x1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lv/b;->b:I

    return-void

    :goto_30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lv/b;->b:I

    return-void

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2a  #00000001
        :pswitch_24  #00000002
        :pswitch_1e  #00000003
        :pswitch_18  #00000004
        :pswitch_12  #00000005
        :pswitch_c  #00000006
        :pswitch_6  #00000007
    .end packed-switch
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lv/b;->a:I

    packed-switch v0, :pswitch_data_4e

    goto :goto_45

    :pswitch_6  #0x6
    iget p0, p0, Lv/b;->b:I

    check-cast p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->a(ILcom/android/wm/shell/bubbles/storage/BubbleEntity;)Z

    move-result p0

    return p0

    :pswitch_f  #0x5
    iget p0, p0, Lv/b;->b:I

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->e(ILcom/android/wm/shell/bubbles/Bubble;)Z

    move-result p0

    return p0

    :pswitch_18  #0x4
    iget p0, p0, Lv/b;->b:I

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p0, p1}, Lcom/android/quickstep/TopTaskTracker;->c(ILandroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0

    :pswitch_21  #0x3
    iget p0, p0, Lv/b;->b:I

    check-cast p1, Lcom/android/launcher3/allapps/BaseAdapterProvider;

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->a(ILcom/android/launcher3/allapps/BaseAdapterProvider;)Z

    move-result p0

    return p0

    :pswitch_2a  #0x2
    iget p0, p0, Lv/b;->b:I

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/Launcher;->r(ILcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :pswitch_33  #0x1
    iget p0, p0, Lv/b;->b:I

    check-cast p1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->k(ILcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z

    move-result p0

    return p0

    :pswitch_3c  #0x0
    iget p0, p0, Lv/b;->b:I

    check-cast p1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->f(ILcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z

    move-result p0

    return p0

    :goto_45
    iget p0, p0, Lv/b;->b:I

    check-cast p1, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->c(ILcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;)Z

    move-result p0

    return p0

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_3c  #00000000
        :pswitch_33  #00000001
        :pswitch_2a  #00000002
        :pswitch_21  #00000003
        :pswitch_18  #00000004
        :pswitch_f  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method
