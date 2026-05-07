.class public final Lcom/sdk/deleteview/DeleteView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/deleteview/DeleteView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/sdk/deleteview/DeleteView;


# direct methods
.method public constructor <init>(Lcom/sdk/deleteview/DeleteView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sdk/deleteview/DeleteView$a;->a:Lcom/sdk/deleteview/DeleteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/sdk/deleteview/DeleteView$a;->a:Lcom/sdk/deleteview/DeleteView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    iget-object v0, p0, Lcom/sdk/deleteview/DeleteView$a;->a:Lcom/sdk/deleteview/DeleteView;

    const/16 v1, 0x10

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/opengl/GLSurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
