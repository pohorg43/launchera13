.class public final synthetic Lcom/android/quickstep/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IZ)V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/e;->c:Ljava/lang/Object;

    iput p3, p0, Lcom/android/quickstep/e;->d:I

    iput-boolean p4, p0, Lcom/android/quickstep/e;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/RecentTasksList;ZILjava/util/function/Consumer;)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/e;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/quickstep/e;->e:Z

    iput p3, p0, Lcom/android/quickstep/e;->d:I

    iput-object p4, p0, Lcom/android/quickstep/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/TaskView;ZILandroid/content/ComponentName;)V
    .registers 6

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/quickstep/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/e;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/quickstep/e;->e:Z

    iput p3, p0, Lcom/android/quickstep/e;->d:I

    iput-object p4, p0, Lcom/android/quickstep/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;ZILandroid/content/ComponentName;)V
    .registers 6

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/quickstep/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/e;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/quickstep/e;->e:Z

    iput p3, p0, Lcom/android/quickstep/e;->d:I

    iput-object p4, p0, Lcom/android/quickstep/e;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/android/quickstep/e;->a:I

    packed-switch v0, :pswitch_data_46

    goto :goto_36

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/quickstep/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/TaskView;

    iget-boolean v1, p0, Lcom/android/quickstep/e;->e:Z

    iget v2, p0, Lcom/android/quickstep/e;->d:I

    iget-object p0, p0, Lcom/android/quickstep/e;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/ComponentName;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/TaskView;->p(Lcom/android/wm/shell/TaskView;ZILandroid/content/ComponentName;)V

    return-void

    :pswitch_16  #0x1
    iget-object v0, p0, Lcom/android/quickstep/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/RecentTasksList;

    iget-boolean v1, p0, Lcom/android/quickstep/e;->e:Z

    iget v2, p0, Lcom/android/quickstep/e;->d:I

    iget-object p0, p0, Lcom/android/quickstep/e;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    invoke-static {v0, v1, v2, p0}, Lcom/android/quickstep/RecentTasksList;->b(Lcom/android/quickstep/RecentTasksList;ZILjava/util/function/Consumer;)V

    return-void

    :pswitch_26  #0x0
    iget-object v0, p0, Lcom/android/quickstep/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v1, p0, Lcom/android/quickstep/e;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget v2, p0, Lcom/android/quickstep/e;->d:I

    iget-boolean p0, p0, Lcom/android/quickstep/e;->e:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->A(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IZ)V

    return-void

    :goto_36
    iget-object v0, p0, Lcom/android/quickstep/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;

    iget-boolean v1, p0, Lcom/android/quickstep/e;->e:Z

    iget v2, p0, Lcom/android/quickstep/e;->d:I

    iget-object p0, p0, Lcom/android/quickstep/e;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/ComponentName;

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->c(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;ZILandroid/content/ComponentName;)V

    return-void

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_26  #00000000
        :pswitch_16  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
