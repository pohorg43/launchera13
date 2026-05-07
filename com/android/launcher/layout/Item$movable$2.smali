.class final Lcom/android/launcher/layout/Item$movable$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/layout/Item;-><init>(IIILjava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/layout/Item;


# direct methods
.method public constructor <init>(Lcom/android/launcher/layout/Item;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/layout/Item$movable$2;->this$0:Lcom/android/launcher/layout/Item;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/layout/Item$movable$2;->this$0:Lcom/android/launcher/layout/Item;

    invoke-virtual {v0}, Lcom/android/launcher/layout/Item;->getContainer()I

    move-result v0

    const/16 v1, -0x64

    if-ne v0, v1, :cond_62

    iget-object v0, p0, Lcom/android/launcher/layout/Item$movable$2;->this$0:Lcom/android/launcher/layout/Item;

    invoke-virtual {v0}, Lcom/android/launcher/layout/Item;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "favorite"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/android/launcher/layout/Item$movable$2;->this$0:Lcom/android/launcher/layout/Item;

    invoke-virtual {v0}, Lcom/android/launcher/layout/Item;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "resolve"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/android/launcher/layout/Item$movable$2;->this$0:Lcom/android/launcher/layout/Item;

    invoke-virtual {v0}, Lcom/android/launcher/layout/Item;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appicon"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/android/launcher/layout/Item$movable$2;->this$0:Lcom/android/launcher/layout/Item;

    invoke-virtual {v0}, Lcom/android/launcher/layout/Item;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shortcut"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/android/launcher/layout/Item$movable$2;->this$0:Lcom/android/launcher/layout/Item;

    invoke-virtual {v0}, Lcom/android/launcher/layout/Item;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "autoinstall"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    iget-object p0, p0, Lcom/android/launcher/layout/Item$movable$2;->this$0:Lcom/android/launcher/layout/Item;

    invoke-virtual {p0}, Lcom/android/launcher/layout/Item;->getTagName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "folder"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_62

    :cond_60
    const/4 p0, 0x1

    goto :goto_63

    :cond_62
    const/4 p0, 0x0

    :goto_63
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/layout/Item$movable$2;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
