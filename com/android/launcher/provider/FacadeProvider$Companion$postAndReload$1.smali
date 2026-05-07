.class final Lcom/android/launcher/provider/FacadeProvider$Companion$postAndReload$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/provider/FacadeProvider$Companion;->postAndReload(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final synthetic $task:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/provider/FacadeProvider$Companion$postAndReload$1;->$task:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/launcher/provider/FacadeProvider$Companion$postAndReload$1;->invoke$lambda-0()V

    return-void
.end method

.method private static final invoke$lambda-0()V
    .registers 1

    invoke-static {}, Lcom/android/launcher/provider/FacadeProvider;->access$getCompanion$p()Lcom/android/launcher/provider/FacadeProvider$Companion;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/provider/FacadeProvider$Companion;->access$reloadLauncher(Lcom/android/launcher/provider/FacadeProvider$Companion;)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/provider/FacadeProvider$Companion$postAndReload$1;->$task:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher/provider/FacadeProvider;->access$getCompanion$p()Lcom/android/launcher/provider/FacadeProvider$Companion;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/provider/b;->a:Lcom/android/launcher/provider/b;

    invoke-static {v0, v1}, Lcom/android/launcher/provider/FacadeProvider$Companion;->access$postInternal(Lcom/android/launcher/provider/FacadeProvider$Companion;Ljava/lang/Runnable;)V

    return-object p0
.end method
