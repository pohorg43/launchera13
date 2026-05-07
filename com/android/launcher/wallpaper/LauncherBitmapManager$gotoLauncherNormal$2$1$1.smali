.class final Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ly2/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $it:Lb3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb3/d<",
            "Ly2/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb3/d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2$1$1;->$it:Lb3/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2$1$1;->invoke()V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final invoke()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2$1$1;->$it:Lb3/d;

    if-nez p0, :cond_5

    goto :goto_a

    :cond_5
    sget-object v0, Ly2/p;->a:Ly2/p;

    invoke-interface {p0, v0}, Lb3/d;->resumeWith(Ljava/lang/Object;)V

    :goto_a
    return-void
.end method
