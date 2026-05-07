.class Lcom/android/launcher3/OplusWorkspace$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusWorkspace;->updateTextColor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/OplusWorkspace;

.field public final synthetic val$selectFinalPage:Lcom/android/launcher3/CellLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/CellLayout;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/OplusWorkspace$8;->this$0:Lcom/android/launcher3/OplusWorkspace;

    iput-object p2, p0, Lcom/android/launcher3/OplusWorkspace$8;->val$selectFinalPage:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace$8;->val$selectFinalPage:Lcom/android/launcher3/CellLayout;

    check-cast p0, Lcom/android/launcher3/IUpdatableCellLayout;

    invoke-interface {p0}, Lcom/android/launcher3/IUpdatableCellLayout;->updateCellLayoutItemColor()V

    return-void
.end method
