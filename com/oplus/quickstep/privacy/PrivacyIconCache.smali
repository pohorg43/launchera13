.class public Lcom/oplus/quickstep/privacy/PrivacyIconCache;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/privacy/PrivacyIconCache$PrivacyIconCacheHolder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPrivacyIcon:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/privacy/PrivacyIconCache;->mContext:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/privacy/PrivacyIconCache$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/privacy/PrivacyIconCache;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/oplus/quickstep/privacy/PrivacyIconCache;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/privacy/PrivacyIconCache$PrivacyIconCacheHolder;->sInstance:Lcom/oplus/quickstep/privacy/PrivacyIconCache;

    return-object v0
.end method


# virtual methods
.method public loadIcon()Landroid/graphics/Bitmap;
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/privacy/PrivacyIconCache;->mPrivacyIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/oplus/quickstep/privacy/PrivacyIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08072a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/privacy/PrivacyIconCache;->mPrivacyIcon:Landroid/graphics/Bitmap;

    :cond_13
    iget-object p0, p0, Lcom/oplus/quickstep/privacy/PrivacyIconCache;->mPrivacyIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method
