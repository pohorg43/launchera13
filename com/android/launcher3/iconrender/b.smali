.class public final synthetic Lcom/android/launcher3/iconrender/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(I[Lcom/android/systemui/shared/recents/model/Task;I)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/iconrender/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/iconrender/b;->c:I

    iput-object p2, p0, Lcom/android/launcher3/iconrender/b;->b:Ljava/lang/Object;

    iput p3, p0, Lcom/android/launcher3/iconrender/b;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/BubbleTextView;II)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/iconrender/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/b;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/iconrender/b;->c:I

    iput p3, p0, Lcom/android/launcher3/iconrender/b;->d:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/iconrender/b;->a:I

    packed-switch v0, :pswitch_data_22

    goto :goto_14

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/iconrender/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    iget v1, p0, Lcom/android/launcher3/iconrender/b;->c:I

    iget p0, p0, Lcom/android/launcher3/iconrender/b;->d:I

    check-cast p1, Lcom/android/launcher3/iconrender/IRenderer;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->h(Lcom/android/launcher3/BubbleTextView;IILcom/android/launcher3/iconrender/IRenderer;)V

    return-void

    :goto_14
    iget v0, p0, Lcom/android/launcher3/iconrender/b;->c:I

    iget-object v1, p0, Lcom/android/launcher3/iconrender/b;->b:Ljava/lang/Object;

    check-cast v1, [Lcom/android/systemui/shared/recents/model/Task;

    iget p0, p0, Lcom/android/launcher3/iconrender/b;->d:I

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->a(I[Lcom/android/systemui/shared/recents/model/Task;ILandroid/app/ActivityManager$RunningTaskInfo;)V

    return-void

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
