.class public final synthetic Lcom/android/launcher3/folder/big/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/folder/big/BigFolderIcon;

.field public final synthetic b:Lcom/android/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher/Launcher;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/c;->a:Lcom/android/launcher3/folder/big/BigFolderIcon;

    iput-object p2, p0, Lcom/android/launcher3/folder/big/c;->b:Lcom/android/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/big/c;->a:Lcom/android/launcher3/folder/big/BigFolderIcon;

    iget-object p0, p0, Lcom/android/launcher3/folder/big/c;->b:Lcom/android/launcher/Launcher;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$fromXml$1;->b(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method
