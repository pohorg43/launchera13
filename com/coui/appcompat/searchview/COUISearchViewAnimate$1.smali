.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/searchview/COUISearchViewAnimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;


# virtual methods
.method public run()V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$1;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    sget v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->u:I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
