.class public final synthetic Lcom/oplus/splitscreen/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/splitscreen/SplitToggleHelper;

.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/splitscreen/SplitToggleHelper;IZZZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/i;->a:Lcom/oplus/splitscreen/SplitToggleHelper;

    iput p2, p0, Lcom/oplus/splitscreen/i;->b:I

    iput-boolean p3, p0, Lcom/oplus/splitscreen/i;->c:Z

    iput-boolean p4, p0, Lcom/oplus/splitscreen/i;->d:Z

    iput-boolean p5, p0, Lcom/oplus/splitscreen/i;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/splitscreen/i;->a:Lcom/oplus/splitscreen/SplitToggleHelper;

    iget v1, p0, Lcom/oplus/splitscreen/i;->b:I

    iget-boolean v2, p0, Lcom/oplus/splitscreen/i;->c:Z

    iget-boolean v3, p0, Lcom/oplus/splitscreen/i;->d:Z

    iget-boolean p0, p0, Lcom/oplus/splitscreen/i;->e:Z

    invoke-static {v0, v1, v2, v3, p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->n(Lcom/oplus/splitscreen/SplitToggleHelper;IZZZ)V

    return-void
.end method
