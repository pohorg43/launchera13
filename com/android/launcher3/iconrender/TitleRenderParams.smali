.class public Lcom/android/launcher3/iconrender/TitleRenderParams;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mForceNotInterceptApplyLabel:Z

.field public mIsInvisible:Z

.field public mItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

.field public mShouldTextBeVisible:Z

.field public needDownloadAnimation:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/TitleRenderParams;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    return-void
.end method

.method public static obtain(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/iconrender/TitleRenderParams;
    .registers 2

    new-instance v0, Lcom/android/launcher3/iconrender/TitleRenderParams;

    invoke-direct {v0, p0}, Lcom/android/launcher3/iconrender/TitleRenderParams;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    return-object v0
.end method
