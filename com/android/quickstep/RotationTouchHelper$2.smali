.class Lcom/android/quickstep/RotationTouchHelper$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/RotationTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/RotationTouchHelper;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/RotationTouchHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/RotationTouchHelper$2;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/RotationTouchHelper$2;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/RotationTouchHelper;->mInOverview:Z

    invoke-static {p0, v0}, Lcom/android/quickstep/RotationTouchHelper;->access$000(Lcom/android/quickstep/RotationTouchHelper;Z)V

    return-void
.end method
