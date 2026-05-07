.class public final synthetic Lcom/android/quickstep/views/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/RunnableList;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/quickstep/views/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/t;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/FloatingWidgetView;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/views/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/t;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/OplusGroupedTaskView;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/quickstep/views/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/t;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/OplusTaskMenuViewImpl;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/quickstep/views/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/t;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView$11;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/views/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/t;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskMenuView;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/quickstep/views/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/t;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/quickstep/views/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/t;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/quickstep/views/t;->a:I

    packed-switch v0, :pswitch_data_3e

    goto :goto_36

    :pswitch_6  #0x5
    iget-object p0, p0, Lcom/android/quickstep/views/t;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeAllRecentTasks()V

    return-void

    :pswitch_e  #0x4
    iget-object p0, p0, Lcom/android/quickstep/views/t;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    return-void

    :pswitch_16  #0x3
    iget-object p0, p0, Lcom/android/quickstep/views/t;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;

    invoke-static {p0}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->g(Lcom/android/quickstep/views/OplusTaskMenuViewImpl;)V

    return-void

    :pswitch_1e  #0x2
    iget-object p0, p0, Lcom/android/quickstep/views/t;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/OplusGroupedTaskView;

    invoke-static {p0}, Lcom/android/quickstep/views/OplusGroupedTaskView;->z(Lcom/android/quickstep/views/OplusGroupedTaskView;)V

    return-void

    :pswitch_26  #0x1
    iget-object p0, p0, Lcom/android/quickstep/views/t;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/FloatingWidgetView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/FloatingWidgetView;->fastFinish()V

    return-void

    :pswitch_2e  #0x0
    iget-object p0, p0, Lcom/android/quickstep/views/t;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/RecentsView$11;

    invoke-static {p0}, Lcom/android/quickstep/views/RecentsView$11;->b(Lcom/android/quickstep/views/RecentsView$11;)V

    return-void

    :goto_36
    iget-object p0, p0, Lcom/android/quickstep/views/t;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/TaskMenuView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuView;->animateOpen()V

    return-void

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_2e  #00000000
        :pswitch_26  #00000001
        :pswitch_1e  #00000002
        :pswitch_16  #00000003
        :pswitch_e  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
