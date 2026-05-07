.class public final synthetic Lcom/oplus/splitscreen/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;IIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/j;->a:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iput p2, p0, Lcom/oplus/splitscreen/j;->b:I

    iput p3, p0, Lcom/oplus/splitscreen/j;->c:I

    iput p4, p0, Lcom/oplus/splitscreen/j;->d:I

    iput p5, p0, Lcom/oplus/splitscreen/j;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/splitscreen/j;->a:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget v1, p0, Lcom/oplus/splitscreen/j;->b:I

    iget v2, p0, Lcom/oplus/splitscreen/j;->c:I

    iget v3, p0, Lcom/oplus/splitscreen/j;->d:I

    iget p0, p0, Lcom/oplus/splitscreen/j;->e:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/oplus/splitscreen/StackDividerService;->g(Lcom/android/wm/shell/splitscreen/SplitScreenController;IIII)V

    return-void
.end method
