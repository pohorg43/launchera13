.class public final synthetic Lcom/android/launcher3/statehandlers/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/statehandlers/DepthController$2;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/statehandlers/DepthController$2;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/statehandlers/a;->a:Lcom/android/launcher3/statehandlers/DepthController$2;

    iput-object p2, p0, Lcom/android/launcher3/statehandlers/a;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/a;->a:Lcom/android/launcher3/statehandlers/DepthController$2;

    iget-object p0, p0, Lcom/android/launcher3/statehandlers/a;->b:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/launcher3/statehandlers/DepthController$2;->a(Lcom/android/launcher3/statehandlers/DepthController$2;Landroid/view/View;)V

    return-void
.end method
