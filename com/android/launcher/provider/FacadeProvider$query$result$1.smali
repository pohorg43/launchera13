.class final Lcom/android/launcher/provider/FacadeProvider$query$result$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/provider/FacadeProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $projection:[Ljava/lang/String;

.field public final synthetic $selection:Ljava/lang/String;

.field public final synthetic $selectionArgs:[Ljava/lang/String;

.field public final synthetic $sortOrder:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/launcher/provider/FacadeProvider;


# direct methods
.method public constructor <init>(Lcom/android/launcher/provider/FacadeProvider;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/android/launcher/provider/FacadeProvider$query$result$1;->this$0:Lcom/android/launcher/provider/FacadeProvider;

    iput-object p2, p0, Lcom/android/launcher/provider/FacadeProvider$query$result$1;->$projection:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher/provider/FacadeProvider$query$result$1;->$selection:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/launcher/provider/FacadeProvider$query$result$1;->$selectionArgs:[Ljava/lang/String;

    iput-object p5, p0, Lcom/android/launcher/provider/FacadeProvider$query$result$1;->$sortOrder:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/database/Cursor;
    .registers 8

    iget-object v0, p0, Lcom/android/launcher/provider/FacadeProvider$query$result$1;->this$0:Lcom/android/launcher/provider/FacadeProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/launcher/provider/FacadeProvider$query$result$1;->$projection:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/launcher/provider/FacadeProvider$query$result$1;->$selection:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/launcher/provider/FacadeProvider$query$result$1;->$selectionArgs:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/launcher/provider/FacadeProvider$query$result$1;->$sortOrder:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/provider/FacadeProvider$query$result$1;->invoke()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
