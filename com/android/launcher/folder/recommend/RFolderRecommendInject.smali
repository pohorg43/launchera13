.class public final Lcom/android/launcher/folder/recommend/RFolderRecommendInject;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendInject;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/folder/recommend/RFolderRecommendInject;

    invoke-direct {v0}, Lcom/android/launcher/folder/recommend/RFolderRecommendInject;-><init>()V

    sput-object v0, Lcom/android/launcher/folder/recommend/RFolderRecommendInject;->INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendInject;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final init(Landroid/content/Context;)V
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;

    new-instance v0, Lcom/android/launcher/folder/recommend/OplusFolderRecommendImpl;

    invoke-direct {v0, p1}, Lcom/android/launcher/folder/recommend/OplusFolderRecommendImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->setMRecommendItf(Lcom/android/launcher/folder/recommend/RRecommendItf;)V

    return-void
.end method
