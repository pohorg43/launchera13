.class public final synthetic Lcom/android/quickstep/c1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/SystemUiProxy;

.field public final synthetic b:F

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/SystemUiProxy;FZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/c1;->a:Lcom/android/quickstep/SystemUiProxy;

    iput p2, p0, Lcom/android/quickstep/c1;->b:F

    iput-boolean p3, p0, Lcom/android/quickstep/c1;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/c1;->a:Lcom/android/quickstep/SystemUiProxy;

    iget v1, p0, Lcom/android/quickstep/c1;->b:F

    iget-boolean p0, p0, Lcom/android/quickstep/c1;->c:Z

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/SystemUiProxy;->b(Lcom/android/quickstep/SystemUiProxy;FZ)V

    return-void
.end method
