.class public final Lcom/android/launcher3/card/cache/CachedEntry;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mCardId:I

.field private mCardType:I

.field private mUIData:Lcom/oplus/card/manager/domain/model/UIData;


# direct methods
.method public constructor <init>(IILcom/oplus/card/manager/domain/model/UIData;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/card/cache/CachedEntry;->mCardId:I

    iput p2, p0, Lcom/android/launcher3/card/cache/CachedEntry;->mCardType:I

    iput-object p3, p0, Lcom/android/launcher3/card/cache/CachedEntry;->mUIData:Lcom/oplus/card/manager/domain/model/UIData;

    return-void
.end method


# virtual methods
.method public getCardId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/cache/CachedEntry;->mCardId:I

    return p0
.end method

.method public getUIData()Lcom/oplus/card/manager/domain/model/UIData;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/cache/CachedEntry;->mUIData:Lcom/oplus/card/manager/domain/model/UIData;

    return-object p0
.end method
