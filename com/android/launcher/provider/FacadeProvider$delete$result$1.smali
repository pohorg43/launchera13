.class final Lcom/android/launcher/provider/FacadeProvider$delete$result$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/provider/FacadeProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
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
.field public final synthetic $selection:Ljava/lang/String;

.field public final synthetic $selectionArgs:[Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/launcher/provider/FacadeProvider;


# direct methods
.method public constructor <init>(Lcom/android/launcher/provider/FacadeProvider;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher/provider/FacadeProvider$delete$result$1;->this$0:Lcom/android/launcher/provider/FacadeProvider;

    iput-object p2, p0, Lcom/android/launcher/provider/FacadeProvider$delete$result$1;->$selection:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher/provider/FacadeProvider$delete$result$1;->$selectionArgs:[Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/provider/FacadeProvider$delete$result$1;->this$0:Lcom/android/launcher/provider/FacadeProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher/provider/FacadeProvider$delete$result$1;->$selection:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/provider/FacadeProvider$delete$result$1;->$selectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/provider/FacadeProvider$delete$result$1;->invoke()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
