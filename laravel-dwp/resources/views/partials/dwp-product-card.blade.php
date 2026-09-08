<article class="dwp-product-card {{ $product->is_featured || $product->isTogaProduct() ? 'is-featured' : '' }}">
    <a href="{{ $product->detailUrl() }}" class="dwp-product-image">
        @if($product->isTogaProduct())
            <span class="dwp-badge dwp-badge-wisuda">Wisuda</span>
        @elseif($product->category?->name)
            <span class="dwp-badge">{{ $product->category->name }}</span>
        @endif
        @if($product->imageUrl())
            <img src="{{ $product->imageUrl() }}" alt="{{ $product->name }}" loading="lazy">
        @else
            <div class="dwp-product-placeholder" aria-hidden="true">
                <span>{{ $product->name }}</span>
            </div>
        @endif
    </a>
    <div class="dwp-product-body">
        <h3><a href="{{ $product->detailUrl() }}">{{ $product->name }}</a></h3>
        <p class="dwp-product-desc">{{ $product->shortDescription() }}</p>
        <p class="dwp-product-price">{{ $product->displayPrice() }}</p>
        <div class="dwp-product-actions">
            <a href="{{ $product->detailUrl() }}" class="dwp-btn dwp-btn-outline">Lihat Detail</a>
            <a href="{{ $product->orderUrl() }}" class="dwp-btn dwp-btn-primary" @if(!$product->isTogaProduct()) target="_blank" rel="noopener noreferrer" @endif>{{ $product->ctaLabel() }}</a>
        </div>
    </div>
</article>
