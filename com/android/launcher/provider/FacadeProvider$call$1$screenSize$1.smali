.class final Lcom/android/launcher/provider/FacadeProvider$call$1$screenSize$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/provider/FacadeProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/provider/FacadeProvider;


# direct methods
.method public constructor <init>(Lcom/android/launcher/provider/FacadeProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/provider/FacadeProvider$call$1$screenSize$1;->this$0:Lcom/android/launcher/provider/FacadeProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .registers 3

    invoke-static {}, Lcom/android/launcher/provider/FacadeProvider;->access$getCompanion$p()Lcom/android/launcher/provider/FacadeProvider$Companion;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/provider/FacadeProvider$call$1$screenSize$1;->this$0:Lcom/android/launcher/provider/FacadeProvider;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/android/launcher/provider/FacadeProvider$Companion;->access$getScreenSize(Lcom/android/launcher/provider/FacadeProvider$Companion;Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/provider/FacadeProvider$call$1$screenSize$1;->invoke()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
