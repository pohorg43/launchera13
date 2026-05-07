.class public final Lcom/android/launcher3/folder/big/FolderOpenAnimHelper$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getExpandTargetPage(Lcom/android/launcher3/folder/big/FolderOpenAnimHelper$Companion;Lcom/android/launcher3/folder/OplusFolderIcon;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper$Companion;->getExpandTargetPage(Lcom/android/launcher3/folder/OplusFolderIcon;)I

    move-result p0

    return p0
.end method

.method private final getExpandTargetPage(Lcom/android/launcher3/folder/OplusFolderIcon;)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    instance-of p0, p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    :cond_6
    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result p0

    if-nez p0, :cond_13

    return v0

    :cond_13
    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewVerifier()Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->getMaxItemForPreview()I

    move-result v0

    mul-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->getMaxItemForExpand()I

    move-result p0

    div-int/2addr v0, p0

    return v0
.end method
