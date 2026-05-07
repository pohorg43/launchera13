.class public final synthetic Lcom/android/launcher3/allapps/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/allapps/m;

.field public static final synthetic c:Lcom/android/launcher3/allapps/m;

.field public static final synthetic d:Lcom/android/launcher3/allapps/m;

.field public static final synthetic e:Lcom/android/launcher3/allapps/m;

.field public static final synthetic f:Lcom/android/launcher3/allapps/m;

.field public static final synthetic g:Lcom/android/launcher3/allapps/m;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/allapps/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/m;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/allapps/m;->b:Lcom/android/launcher3/allapps/m;

    new-instance v0, Lcom/android/launcher3/allapps/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/m;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/allapps/m;->c:Lcom/android/launcher3/allapps/m;

    new-instance v0, Lcom/android/launcher3/allapps/m;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/m;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/allapps/m;->d:Lcom/android/launcher3/allapps/m;

    new-instance v0, Lcom/android/launcher3/allapps/m;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/m;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/allapps/m;->e:Lcom/android/launcher3/allapps/m;

    new-instance v0, Lcom/android/launcher3/allapps/m;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/m;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/allapps/m;->f:Lcom/android/launcher3/allapps/m;

    new-instance v0, Lcom/android/launcher3/allapps/m;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/m;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/allapps/m;->g:Lcom/android/launcher3/allapps/m;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/allapps/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget p0, p0, Lcom/android/launcher3/allapps/m;->a:I

    packed-switch p0, :pswitch_data_2a

    goto :goto_24

    :pswitch_6  #0x4
    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-virtual {p1}, Lcom/android/wm/shell/recents/RecentTasksController;->init()V

    return-void

    :pswitch_c  #0x3
    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {p1}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->a(Landroid/view/MotionEvent;)V

    return-void

    :pswitch_12  #0x2
    check-cast p1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$OnClosePopupContainerListener;

    invoke-interface {p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$OnClosePopupContainerListener;->onPopupContainerClosed()V

    return-void

    :pswitch_18  #0x1
    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {p1}, Lcom/android/launcher3/model/AllAppsList;->b(Lcom/android/launcher3/model/data/AppInfo;)V

    return-void

    :pswitch_1e  #0x0
    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->d(Lcom/android/launcher3/BubbleTextView;)V

    return-void

    :goto_24
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/inputconsumer/ChildModeInputConsumer;->a(Ljava/lang/Boolean;)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_18  #00000001
        :pswitch_12  #00000002
        :pswitch_c  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
