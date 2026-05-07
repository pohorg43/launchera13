.class public final Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/folder/download/FolderRecommendUtils;
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

    invoke-direct {p0}, Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getSInstance$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getMOrganizer()Lcom/android/launcher3/folder/FolderGridOrganizer;
    .registers 1

    sget-object p0, Lcom/android/launcher/folder/download/FolderRecommendUtils;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mOrganizer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMRecommendIdList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher/folder/download/FolderRecommendUtils;->mRecommendIdList:Ljava/util/List;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string/jumbo p0, "mRecommendIdList"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSDumpInfo()Ljava/lang/StringBuilder;
    .registers 1

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->access$getSDumpInfo$cp()Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;
    .registers 1

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->access$getSInstance$delegate$cp()Ly2/e;

    move-result-object p0

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/folder/download/FolderRecommendUtils;

    return-object p0
.end method

.method public final setMOrganizer(Lcom/android/launcher3/folder/FolderGridOrganizer;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher/folder/download/FolderRecommendUtils;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    return-void
.end method

.method public final setMRecommendIdList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher/folder/download/FolderRecommendUtils;->mRecommendIdList:Ljava/util/List;

    return-void
.end method

.method public final setSDumpInfo(Ljava/lang/StringBuilder;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->access$setSDumpInfo$cp(Ljava/lang/StringBuilder;)V

    return-void
.end method
