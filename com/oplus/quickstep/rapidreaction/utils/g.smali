.class public final synthetic Lcom/oplus/quickstep/rapidreaction/utils/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherState;Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/quickstep/rapidreaction/utils/g;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/quickstep/rapidreaction/utils/g;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;Ljava/util/function/Consumer;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/quickstep/rapidreaction/utils/g;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/quickstep/rapidreaction/utils/g;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/g;->a:I

    packed-switch v0, :pswitch_data_3e

    goto :goto_30

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/g;->b:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/g;->c:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->b(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/Boolean;)V

    return-void

    :pswitch_14  #0x1
    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/g;->c:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->a(Lcom/android/launcher3/LauncherState;Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;Ljava/lang/Boolean;)V

    return-void

    :pswitch_22  #0x0
    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/g;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->a(Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;Ljava/util/function/Consumer;Ljava/lang/Boolean;)V

    return-void

    :goto_30
    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/g;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->f(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;Ljava/lang/Boolean;)V

    return-void

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_22  #00000000
        :pswitch_14  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
