.class final Lcom/android/launcher3/card/CardPreloadResourceLoader$packageManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/CardPreloadResourceLoader;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/content/pm/PackageManager;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/CardPreloadResourceLoader;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$packageManager$2;->this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/pm/PackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$packageManager$2;->this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    invoke-static {p0}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->access$getContext$p(Lcom/android/launcher3/card/CardPreloadResourceLoader;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardPreloadResourceLoader$packageManager$2;->invoke()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method
